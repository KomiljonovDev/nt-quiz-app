<?php

namespace App\Http\Controllers\API;

use App\Models\Option;
use App\Models\Question;
use App\Models\Quiz;
use App\Traits\Validator;
use Src\Auth;

class QuizController {
    use Validator;

    public function index () {
        $quizzes = (new Quiz())->getByUserId(Auth::user()->id);
        apiResponse(['quizzes' => $quizzes]);
    }
    public function store () {
        $quizItems = $this->validate([
            'title' => 'string',
            'description' => 'string',
            'timeLimit' => 'int',
            'questions' => 'array',
        ]);

        $quiz = new Quiz();
        $question = new Question();
        $option = new Option();

        $quiz_id = $quiz->create(
            Auth::user()->id,
            $quizItems['title'],
            $quizItems['description'],
            $quizItems['timeLimit']
        );
        $questions = $quizItems['questions'];

        foreach ($questions as $questionItem) {
            $question_id = $question->create($quiz_id, $questionItem['quiz']);
            $correct = $questionItem['correct']; // 1
            foreach ($questionItem['options'] as $key => $optionItem) {
                $option->create($question_id, $optionItem, $correct == $key);
            }
        }

        apiResponse(['message' => 'Quiz created successfully',], 201);
    }
    public function update (int $quizId) {
        $updates = file_get_contents('php://input');
        dd($updates);
        $quizItems = $this->validate([
            'title' => 'string',
            'description' => 'string',
            'timeLimit' => 'int',
            'questions' => 'array',
        ]);
        dd($quizItems);
//
//        $quiz = new Quiz();
//        $question = new Question();
//        $option = new Option();
//        // update quiz
//        $quiz->update($quizId,
//            $quizItems['title'],
//            $quizItems['description'],
//            $quizItems['timeLimit'],
//        );
//        // destroy all questions and options
//        $question->deleteByQuizId($quizId);
//
//
//        $questions = $quizItems['questions'];
//
//        foreach ($questions as $questionItem) {
//            $question_id = $question->create($quizId, $questionItem['quiz']);
//            $correct = $questionItem['correct']; // 1
//            foreach ($questionItem['options'] as $key => $optionItem) {
//                $option->create($question_id, $optionItem, $correct == $key);
//            }
//        }
//
//        apiResponse(['message' => 'Quiz updated successfully',]);
    }
    public function destroy (int $quizId) {
        $quiz = new Quiz();
        $quiz->delete($quizId);
        apiResponse([
            'message' => 'Quiz deleted successfully',
        ]);
    }
}