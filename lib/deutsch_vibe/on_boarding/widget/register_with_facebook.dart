import 'package:deutsch_vibe/core/constants/vibe_colors.dart';
import 'package:deutsch_vibe/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/vibe_string.dart';

class RegisterWithFacebook extends StatelessWidget {
  const RegisterWithFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(VibeColors.white),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(Assets.icons.facebook),
          Text(VibeString.facebook),
        ],
      ),
    );
  }
}
