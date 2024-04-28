<?php

namespace App\Http\Controllers;

use App\Models\Chapter;
use App\Models\Classroom;
use App\Models\Result;
use App\Models\Subject;
use App\Models\SubmitResult;
use App\Models\User;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class ResultController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $classroomId = $request->classroom_id ?? '';
            $subjectId = $request->subject_id ?? '';
            $chapterId = $request->chapter_id ?? '';

            $userDistrict = $userCampus = '';
            $otherStudentsResults = [];
            if (($classroomId && !$subjectId) || !$classroomId) {
                $otherStudentsResults = [];
            } else {
                // Fetch other students' results
                $otherStudentsResults = $this->all_student_results($subjectId, $chapterId, $userDistrict, $userCampus);
            }

            return DataTables::of($otherStudentsResults)
                ->addIndexColumn()
                ->make(true);
        }

        $pageHead = 'Results';
        $pageTitle = 'Results';
        $activeMenu = 'results';
        $oldClassRoomId = session()->getOldInput('classroom_id');
        $oldSubjectId = session()->getOldInput('subject_id');
        $classRooms = Classroom::get();
        $subjects = $oldClassRoomId != '' ? Subject::where('classroom_id', $oldClassRoomId)->orWhere('classroom_id', null)->get() : Subject::where('classroom_id', null)->get();
        $chapters = $oldSubjectId != '' ? Chapter::where('subject_id', $oldSubjectId)->get() : [];
        $users = User::all();
        return view('result.index', compact('activeMenu', 'pageHead', 'pageTitle', 'classRooms', 'subjects', 'chapters', 'users'));
    }

    protected function all_student_results($subjectId, $chapterId, $districtId, $campusId)
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
                    // } else {
                    //     $otherPercentage = 0;
                    // }
                    // Add information to the array
                    $otherStudentsResults[] = [
                        'student_id' => $otherResult->user->id,
                        'student_name' => $otherResult->user->name, // Assuming there's a relationship between Result and User
                        'matric_score' => $otherResult->user->matric_marks ?? 0,
                        'fsc_score' => $otherResult->user->fsc_marks ?? 0,
                        'otherCorrectAnswers' => $otherCorrectAnswers ?? 0,
                        'otherSubmitResults' => count($otherSubmitResults) ?? 0,
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

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
