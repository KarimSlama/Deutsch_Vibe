import 'package:deutsch_vibe/deutsch_vibe/on_boarding/widget/second_page/animated_card_widget.dart';
import 'package:deutsch_vibe/deutsch_vibe/on_boarding/widget/second_page/on_boarding_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/vibe_string.dart';
import '../title_and_sub_title.dart';

class OnBoardingSecond extends StatelessWidget {
  final Animation<Offset> textSlideAnimation;
  final Animation<double> fadeAnimation;
  final Animation<double> scaleAnimation;

  const OnBoardingSecond({
    super.key,
    required this.textSlideAnimation,
    required this.fadeAnimation,
    required this.scaleAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 26),
      child: FadeTransition(
        opacity: fadeAnimation,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Column(
            spacing: 4.h,
            children: [
              AnimatedCard(
                delay: 0.5,
                child: OnBoardingCardWidget(
                  isTitleFound: true,
                  cardName: VibeString.challenges,
                  missionDuration: VibeString.fiveDaysHoursLeft,
                  missionTitle: VibeString.germanLanguageLearning,
                ),
              ),
              AnimatedCard(
                delay: 1.0,
                child: OnBoardingCardWidget(
                  isTitleFound: true,
                  cardName: VibeString.habits,
                  missionDuration: VibeString.tenFromHundred,
                  missionTitle: VibeString.newVocabLearning,
                ),
              ),
              AnimatedCard(
                delay: 1.5,
                child: OnBoardingCardWidget(
                  isTitleFound: false,
                  missionDuration: VibeString.fiveDaysHoursLeft,
                  missionTitle: VibeString.newCourseLearning,
                ),
              ),
              AnimatedCard(
                delay: 1.8,
                child: OnBoardingCardWidget(
                  isTitleFound: false,
                  missionDuration: VibeString.tenFromHundred,
                  missionTitle: VibeString.achieveFluency,
                ),
              ),
              SlideTransition(
                position: textSlideAnimation,
                child: TitlesAndSubTitles(
                  textSlideAnimation: textSlideAnimation,
                  text: VibeString.trackYourProgress,
                  subText: VibeString
                      .everydayYouBecomeOneStepCloserToYourGoalDontGiveUp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
