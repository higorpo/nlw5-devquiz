import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border),
        ),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          Text("Gerenciamento de estados", style: AppTextStyles.heading15),
          Row(
            children: [
              Text("3 de 10", style: AppTextStyles.body11),
              LinearProgressIndicator(
                value: .3,
                backgroundColor: AppColors.chartSecondary,
                valueColor: AlwaysStoppedAnimation(AppColors.chartPrimary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
