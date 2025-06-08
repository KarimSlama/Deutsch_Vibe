import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/vibe_colors.dart';

class ImageUserBoxWidget extends StatelessWidget {
  final Image imagePath;
  final bool fromLeft;
  final AnimationController controller;
  final Animation<Offset> textSlideAnimation;
  final Animation<Offset> imageSlideAnimation;
  final Animation<double> boxVerticalAnimation;

  const ImageUserBoxWidget(
      {super.key,
      required this.imagePath,
      required this.fromLeft,
      required this.controller,
      required this.textSlideAnimation,
      required this.imageSlideAnimation,
      required this.boxVerticalAnimation});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Row(
          mainAxisAlignment:
              fromLeft ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            SlideTransition(position: imageSlideAnimation, child: imagePath),
            SizedBox(width: 10.w),
            Transform.translate(
              offset: Offset(0, boxVerticalAnimation.value),
              child: Container(
                width: 120.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: VibeColors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: boxVerticalAnimation.value,
                      top: 8.h,
                      child: Icon(
                        Icons.check_circle_outline_rounded,
                        color: VibeColors.blue,
                        size: 24.r,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
