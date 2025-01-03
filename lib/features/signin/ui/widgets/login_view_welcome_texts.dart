import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/spacing.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/font_family_helper.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/styles.dart';

class LoginViewWelcomeTexts extends StatelessWidget {
  const LoginViewWelcomeTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            "Welcome Back",
            style: Styles.font22AppBar.copyWith(
              fontSize: 24.sp,
              letterSpacing: -0.48,
              color: Colors.white,
              fontFamily: FontFamilyHelper.clashDisplay,
            ),
          ),
        ),
        verticalSpace(8),
        Text(
          "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
          style: Styles.font20HeaderSection.copyWith(
            fontSize: 15.sp,
            letterSpacing: 0.20,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
