import 'package:sprints_shopping_app_with_localization/core/helpers/spacing.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/font_family_helper.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupViewWelcomeTexts extends StatelessWidget {
  const SignupViewWelcomeTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            "Create Account",
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
          "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
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
