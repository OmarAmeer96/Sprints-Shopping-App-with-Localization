import 'package:sprints_shopping_app_with_localization/core/routing/routes.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/colors_manager.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/font_family_helper.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprints_shopping_app_with_localization/generated/l10n.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: S.of(context).signup_already_have_account,
            style: Styles.font20WhiteSemiBold.copyWith(
              color: ColorsManager.accentColor,
              fontSize: 13.sp,
              fontFamily: FontFamilyHelper.suwannaphumBold,
              letterSpacing: 1,
            ),
          ),
          TextSpan(
            text: S.of(context).signup_signin,
            style: Styles.font20WhiteSemiBold.copyWith(
              fontSize: 13.sp,
              fontFamily: FontFamilyHelper.suwannaphumBold,
              letterSpacing: 1,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, Routes.signinView);
              },
          ),
        ],
      ),
    );
  }
}
