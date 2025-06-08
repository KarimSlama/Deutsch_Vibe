import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/vibe_colors.dart';
import '../../../../core/constants/vibe_string.dart';
import '../../../../gen/assets.gen.dart';

class OnBoardingCardWidget extends StatelessWidget {
  final bool isTitleFound;
  final String? cardName;
  final String missionTitle;
  final String missionDuration;

  const OnBoardingCardWidget({
    super.key,
    this.cardName,
    required this.missionTitle,
    required this.missionDuration,
    this.isTitleFound = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        !isTitleFound
            ? Container()
            : Text(
                cardName ?? VibeString.challenges,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: VibeColors.white, fontSize: 20.sp),
              ),
        Container(
          padding: const EdgeInsets.all(13),
          width: double.infinity,
          decoration: BoxDecoration(
            color: VibeColors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    missionTitle,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: VibeColors.black,
                        ),
                  ),
                  const Spacer(),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        radius: 14,
                        child: Assets.images.user.image(),
                      ),
                      Positioned(
                        right: -10,
                        child: CircleAvatar(
                          radius: 14,
                          child: Assets.images.user2.image(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                spacing: 7.w,
                children: [
                  SvgPicture.asset(Assets.icons.time),
                  Text(
                    missionDuration,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: VibeColors.light, fontSize: 14.sp),
                  ),
                  const Spacer(),
                  Text(
                   VibeString.takePart,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: VibeColors.light, fontSize: 13.sp),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
