import 'package:deutsch_vibe/core/constants/vibe_sizes.dart';
import 'package:flutter/material.dart';
import 'package:deutsch_vibe/core/constants/vibe_colors.dart';
import 'package:deutsch_vibe/core/constants/vibe_string.dart';

bool isLoggedUser = false;

class Constants {
  static final pageController = PageController();
  static int currentPage = 0;

  static var isDark;

  static void showEnlargedImage(String image, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog.fullscreen(
          insetAnimationDuration: Duration(milliseconds: 500),
          insetAnimationCurve: Curves.easeInOut,
          backgroundColor: VibeColors.black.withValues(alpha: 0.8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: VibeColors.black.withValues(alpha: 0.5),
                        blurRadius: 20,
                        spreadRadius: 5,
                      )
                    ],
                  ),
                  child: ClipOval(
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) => Icon(
                        Icons.error,
                        color: VibeColors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: VibeColors.white,
                    side: BorderSide(color: VibeColors.white),
                    padding: EdgeInsets.symmetric(
                        horizontal: VibeSizes.lg, vertical: VibeSizes.md),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(VibeSizes.borderRadiusXl),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    VibeString.close,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
