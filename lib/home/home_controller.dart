import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final ValueNotifier<HomeState> stateNotifier =
      ValueNotifier<HomeState>(HomeState.EMPTY);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.LOADING;

    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "Higor",
      photoUrl: "https://avatars.githubusercontent.com/u/46327961?v=4",
    );

    state = HomeState.SUCCESS;
  }

  void getQuizzes() async {
    state = HomeState.LOADING;

    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        image: AppImages.laptop,
        level: Level.FACIL,
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutte?",
            answers: [
              AnswerModel(title: "Estou curtindo", isRight: true),
              AnswerModel(title: "Não tá legal", isRight: false),
              AnswerModel(title: "Nada bom", isRight: false),
              AnswerModel(title: "Muito ruim", isRight: false),
            ],
          ),
        ],
      ),
      QuizModel(
        title: "Como usar estados?",
        image: AppImages.blocks,
        level: Level.FACIL,
        questionAnswered: 3,
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutte?",
            answers: [
              AnswerModel(title: "Estou curtindo", isRight: true),
              AnswerModel(title: "Não tá legal", isRight: false),
              AnswerModel(title: "Nada bom", isRight: false),
              AnswerModel(title: "Muito ruim", isRight: false),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutte?",
            answers: [
              AnswerModel(title: "Estou curtindo", isRight: true),
              AnswerModel(title: "Não tá legal", isRight: false),
              AnswerModel(title: "Nada bom", isRight: false),
              AnswerModel(title: "Muito ruim", isRight: false),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutte?",
            answers: [
              AnswerModel(title: "Estou curtindo", isRight: true),
              AnswerModel(title: "Não tá legal", isRight: false),
              AnswerModel(title: "Nada bom", isRight: false),
              AnswerModel(title: "Muito ruim", isRight: false),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutte?",
            answers: [
              AnswerModel(title: "Estou curtindo", isRight: true),
              AnswerModel(title: "Não tá legal", isRight: false),
              AnswerModel(title: "Nada bom", isRight: false),
              AnswerModel(title: "Muito ruim", isRight: false),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutte?",
            answers: [
              AnswerModel(title: "Estou curtindo", isRight: true),
              AnswerModel(title: "Não tá legal", isRight: false),
              AnswerModel(title: "Nada bom", isRight: false),
              AnswerModel(title: "Muito ruim", isRight: false),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutte?",
            answers: [
              AnswerModel(title: "Estou curtindo", isRight: true),
              AnswerModel(title: "Não tá legal", isRight: false),
              AnswerModel(title: "Nada bom", isRight: false),
              AnswerModel(title: "Muito ruim", isRight: false),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutte?",
            answers: [
              AnswerModel(title: "Estou curtindo", isRight: true),
              AnswerModel(title: "Não tá legal", isRight: false),
              AnswerModel(title: "Nada bom", isRight: false),
              AnswerModel(title: "Muito ruim", isRight: false),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutte?",
            answers: [
              AnswerModel(title: "Estou curtindo", isRight: true),
              AnswerModel(title: "Não tá legal", isRight: false),
              AnswerModel(title: "Nada bom", isRight: false),
              AnswerModel(title: "Muito ruim", isRight: false),
            ],
          ),
        ],
      ),
    ];

    state = HomeState.SUCCESS;
  }
}
