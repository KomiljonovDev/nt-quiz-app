<?php

namespace App\Http\Controllers\API;

use App\Models\Quiz;
use Src\Auth;

class QuizController {
    public function store () {

//        $quiz_id = Quiz::create(); # id:1;
//        $question_id = Question::create($quiz_id); # id:1;
//        Option::create($question_id);

        apiResponse(['message' => 'Quiz created successfully',], 201);
    }
}