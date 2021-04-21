import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.EMPTY;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "Higor",
      photoUrl: "https://avatars.githubusercontent.com/u/46327961?v=4",
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        image: AppImages.blocks,
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
    ];
  }
}
