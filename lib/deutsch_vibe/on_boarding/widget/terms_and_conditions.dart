import 'package:deutsch_vibe/core/constants/vibe_string.dart';
import 'package:deutsch_vibe/core/devices/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/vibe_colors.dart';

class TermsAndConditions extends StatelessWidget {
  final Animation<Offset> textSlideAnimation;

  const TermsAndConditions({super.key, required this.textSlideAnimation});

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: textSlideAnimation,
      child: InkWell(
        onTap: () => VibeDeviceUtility.launchUrlLink(Uri.parse(
            'https://sites.google.com/view/deutschvibe/%D8%A7%D9%84%D8%B5%D9%81%D8%AD%D8%A9-%D8%A7%D9%84%D8%B1%D8%A6%D9%8A%D8%B3%D9%8A%D8%A9')),
        child: Text(
          textAlign: TextAlign.center,
          VibeString.byContinuingYouAgreeTermsOfServicesPrivacyPolicy,
          style: Theme.of(context)
              .textTheme
              .labelSmall
              ?.apply(color: VibeColors.onahau),
        ),
      ),
    );
  }
}
