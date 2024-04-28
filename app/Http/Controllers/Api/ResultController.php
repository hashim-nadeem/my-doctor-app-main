<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\ResultRequest;
use App\Http\Requests\Api\ResultSubmitRequest;
use App\Models\Result;
use App\Models\SubmitResult;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;


class ResultController extends Controller
{

    public function index(ResultRequest $request)
    {
        try {
            $subjectId = $request->subject_id ?? '';
            $chapterId = $request->chapter_id ?? '';
            $userId = $request->user_id ?? '';

            $userDistrict = $userCampus = '';
            $user = User::find($userId);
            if ($request->district == true) {
                $userDistrict = $user->district_id;
            }
            if ($request->campus == true) {
                $userCampus = $user->campus_id;
            }

            // Fetch other students' results
            $otherStudentsResults = $this->get_student_results($subjectId, $chapterId, $userId, $userDistrict, $userCampus);
            if (!$otherStudentsResults) {
                $response = [
                    'success' => false,
                    'message' => 'Result not found',
                ];

                return response()->json($response, 404);
            }
            $mainStudent = null;

            foreach ($otherStudentsResults as $otherStudentResult) {
                if ($otherStudentResult['student_id'] == $userId) {
                    $mainStudent = $otherStudentResult;
                    break; // Stop the loop once the main student is found
                }
            }

            $response = [
                'success' => true,
                'mainStudent' => $mainStudent ?? [],
                'other_results' => $otherStudentsResults ?? [],
            ];

            return response()->json($response, 200);
        } catch (\Throwable $th) {
            $response = [
                'success' => false,
                'errors' => $th->getMessage(),
            ];

            return response()->json($response, 400);
        }
    }

    protected function get_student_results($subjectId, $chapterId, $userId, $districtId, $campusId)
    {

        $otherResults = Result::with(['user' => function ($query) use ($districtId, $campusId) {
            $query->when($districtId, function ($query2) use ($districtId) {
                $query2->where('district_id', $districtId);
            });
            $query->when($campusId, function ($query2) use ($campusId) {
                $query2->where('campus_id', $campusId);
            });
        }])->where('subject_id', $subjectId)->when($chapterId, function ($query) use ($chapterId) {
            $query->where('chapter_id', $chapterId);
        })->get();

        // Initialize an array to store information about other students' results
        $otherStudentsResults = [];
        // Check if $otherResults is not empty and the first element has the 'user' relationship
        if ($otherResults->isNotEmpty() && $otherResults[0]->relationLoaded('user') != null) {
            // Loop through other results to gather information
            foreach ($otherResults as $otherResult) {
                if ($otherResult->user) {
                    // Fetch associated SubmitResults
                    $otherSubmitResults = SubmitResult::where('result_id', $otherResult->id)->get();
                    // Initialize variables to count correct and total answers
                    $otherCorrectAnswers = 0;

                    foreach ($otherSubmitResults as $otherSubmitResult) {
                        // Check if the user answer is correct
                        if ($otherSubmitResult->user_ans_key == $otherSubmitResult->correct_key) {
                            $otherCorrectAnswers++;
                        }
                    }

                    // if (!empty($otherSubmitResults) && count($otherSubmitResults) > 0) {
                    // Calculate percentage for other students
                    $matricWeight = 0.10;
                    $fscWeight = 0.60;
                    $resultWeight = 0.30;
                    // Calculate the weighted score
                    $weightedScore = $matricWeight * $otherResult->user->matric_marks +
                        $fscWeight * $otherResult->user->fsc_marks +
                        $resultWeight * ($otherCorrectAnswers);
                    $userOriginalScore = $otherResult->user->matric_marks + $otherResult->user->fsc_marks + $otherCorrectAnswers ?? 0;
                    $otherPercentage = intval(round(min(($weightedScore / $userOriginalScore) * 100, 100)));
                    $calculated_score = (isset($weightedScore) && !empty($weightedScore) ? number_format($weightedScore, 2, '.', '') : 0);
                    // }
                    // Add information to the array
                    $otherStudentsResults[] = [
                        'student_id' => $otherResult->user->id,
                        'student_name' => $otherResult->user->name, // Assuming there's a relationship between Result and User
                        'test_score' => floatval($calculated_score),
                        'percentage' => $otherPercentage,
                        // Add other relevant information as needed
                    ];
                }
            }

            // Sort the results in descending order based on the percentage scores
            usort($otherStudentsResults, function ($a, $b) {
                if ($b['percentage'] === $a['percentage']) {
                    // If percentages are the same, sort based on student ID (or any other unique identifier)
                    return $a['student_id'] - $b['student_id'];
                }

                return $b['percentage'] - $a['percentage'];
            });

            // Assign ranks based on the order in the sorted list
            $rank = 1;
            $prevPercentage = null;

            foreach ($otherStudentsResults as &$otherStudentResult) {
                if ($prevPercentage !== null && $otherStudentResult['percentage'] !== $prevPercentage) {
                    $rank++;
                }

                $otherStudentResult['rank'] = $rank;
                $prevPercentage = $otherStudentResult['percentage'];
            }
        }
        return $otherStudentsResults;
    }


    public function submit_user_result(ResultSubmitRequest $request)
    {
        try {
            $subjectId = $request->subject_id ?? '';
            $chapterId = $request->chapter_id ?? '';
            $userId = $request->user_id ?? '';
            $result_exist = Result::where(['subject_id' => $subjectId, 'chapter_id' => $chapterId, 'user_id' => $userId])->exists();
            if ($result_exist) {
                return response()->json([
                    'success' => false,
                    'errors' => 'Result Already Exists Against this Test!',
                ], 400);
            }
            $result_data = [
                'subject_id' => $subjectId,
                'chapter_id' => $chapterId,
                'user_id' => $userId
            ];
            $result = Result::create($result_data);
            $answer_array = json_decode($request->answers, true);
            if ($answer_array) {
                foreach ($answer_array as $key => $val) {
                    $answers_data = [
                        'result_id' => $result->id,
                        'question_id' => $val['question_id'],
                        'user_ans_key' => $val['user_ans_key'],
                        'correct_key' => $val['correct_key']
                    ];
                    SubmitResult::create($answers_data);
                }
                return response()->json(['success' => true, 'message' => 'Result Submitted Successfully!'], 200);
            } else {
                return response()->json([
                    'success' => false,
                    'errors' => 'Answers Array not submitted!',
                ], 400);
            }
        } catch (\Throwable $th) {

            $response = [

                'success' => false,
                'errors' => $th,

            ];

            return response()->json($response, 400);
        }
    }
}
