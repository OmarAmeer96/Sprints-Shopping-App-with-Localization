import 'package:sprints_shopping_app_with_localization/core/helpers/extensions.dart';
import 'package:sprints_shopping_app_with_localization/core/routing/routes.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/colors_manager.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/font_family_helper.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/styles.dart';
import 'package:sprints_shopping_app_with_localization/core/widgets/loaading_animation.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/logic/signup_cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: LoadingAnimation(),
                // child: CircularProgressIndicator(
                //   color: ColorsManager.mainBlue,
                // ),
              ),
            );
          },
          success: (signupResponse) {
            context.pop();
            // context.pushNamed(Routes.homeView);
            showSuccessDialog(context);
          },
          error: (error) {
            context.pop();
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: ColorsManager.primaryColorShade2,
          icon: const Icon(
            Icons.check_circle,
            color: ColorsManager.enabledTextFieldColor,
            size: 32,
          ),
          title: const Text('Signup Successful'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'Congratulations, you have signed up successfully!',
                  textAlign: TextAlign.center,
                  style: Styles.font13GreyBold.copyWith(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: FontFamilyHelper.suwannaphumBold,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                context.pushNamed(Routes.signinView);
              },
              child: Text(
                'Continue',
                style: Styles.font13GreyBold.copyWith(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: FontFamilyHelper.suwannaphumBold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<dynamic> setupErrorState(BuildContext context, String error) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: ColorsManager.primaryColorShade2,
        icon: const Icon(
          Icons.error,
          color: ColorsManager.enabledTextFieldColor,
          size: 32,
        ),
        content: Text(
          error,
          textAlign: TextAlign.center,
          style: Styles.font13GreyBold.copyWith(
            color: Colors.white,
            fontSize: 15,
            fontFamily: FontFamilyHelper.suwannaphumBold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: Styles.font13GreyBold.copyWith(
                color: Colors.white,
                fontSize: 15,
                fontFamily: FontFamilyHelper.suwannaphumBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
