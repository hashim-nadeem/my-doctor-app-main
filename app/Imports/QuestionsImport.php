<?php

namespace App\Imports;

use App\Models\Question;
use App\Models\QuestionKey;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class QuestionsImport implements ToCollection
{
    public $subjectQuestion; // Add a property to hold the subjectQuestion instance

    /**
     * Summary of __construct
     * @param mixed $subjectQuestion
     */
    public function __construct($subjectQuestion)
    {
        $this->subjectQuestion = $subjectQuestion;
    }
    /**
    * @param Collection $collection
    */
    public function collection(Collection $collection)
    {
        
        foreach ($collection as $key => $row) 
        {
            
            if($key == 0)
            {
                continue;
            }
            
            if(!empty($row[5]))
            {

                $question = [
                    'subject_question_id' => $this->subjectQuestion->id,
                    'title' => $row[0],
                    'correct_key' => $row[5] ?? NULL,
                ];

                $question = Question::create($question);
                
                $options = [];
                
                // option1
                if(!empty($row[1]))
                {

                    $options[] = [
                        'question_id' => $question->id,
                        'option'=> $row[1],
                    ];

                }

                // option2
                if(!empty($row[2]))
                {

                    $options[] = [
                        'question_id' => $question->id,
                        'option'=> $row[2],
                    ];

                }

                // option3
                if(!empty($row[3]))
                {

                    $options[] = [
                        'question_id' => $question->id,
                        'option'=> $row[3],
                    ];

                }

                // option4
                if(!empty($row[4]))
                {

                    $options[] = [
                        'question_id' => $question->id,
                        'option'=> $row[4],
                    ];

                }

                QuestionKey::insert($options);

            }

        }

    }

}
