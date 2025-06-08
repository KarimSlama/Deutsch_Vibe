import 'package:deutsch_vibe/core/constants/vibe_string.dart';
import 'package:deutsch_vibe/core/helpers/extensions.dart';
import 'package:deutsch_vibe/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/vibe_colors.dart';
import '../../../core/routing/routes.dart';

class ContinueWithEmail extends StatelessWidget {
  const ContinueWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 20),
      child: TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(VibeColors.white),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStatePropertyAll(Size(double.infinity, 55.h)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            SvgPicture.asset(Assets.icons.login),
            Text(
              VibeString.continueWithEmail,
              style: Theme.of(context).textTheme.bodyLarge?.apply(
                    color: VibeColors.black,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
