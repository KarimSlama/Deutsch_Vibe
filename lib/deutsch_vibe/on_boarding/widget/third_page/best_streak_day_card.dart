import 'package:deutsch_vibe/core/constants/vibe_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/vibe_colors.dart';

class BestStreakDayCard extends StatelessWidget {
  const BestStreakDayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      top: 100.h,
      start: 90.w,
      child: Container(
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: VibeColors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              VibeString.bestStreakDay,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: VibeColors.light,
                  ),
            ),
            Text(
              '22',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: VibeColors.black,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
