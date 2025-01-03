import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/spacing.dart';
import 'package:sprints_shopping_app_with_localization/core/widgets/custom_main_button.dart';
import 'package:sprints_shopping_app_with_localization/features/home/widgets/custom_positioned_home_overlay.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/ui/widgets/already_have_an_account_text.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/ui/widgets/signup_bloc_listener.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/ui/widgets/signup_email_and_password_widget.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/ui/widgets/signup_view_welcome_texts.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Stack(
        children: [
          CustomPositionedHomeOverlay(),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top + 24.h,
                      left: 24.w,
                      right: 24.w,
                      bottom: 24.h,
                    ),
                    child: Column(
                      children: [
                        const SignupViewWelcomeTexts(),
                        verticalSpace(32),
                        Column(
                          children: [
                            const SignupEmailAndPasswordWidget(),
                            verticalSpace(42),
                            CustomMainButton(
                              onPressed: () {
                                validateThenSignup(context);
                              },
                              buttonText: 'Sign Up',
                            ),
                            verticalSpace(30),
                            const AlreadyHaveAccountText(),
                            const SignupBlocListener(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void validateThenSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupState();
    } else {
      context.read<SignupCubit>().autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
