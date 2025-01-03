import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/extensions.dart';
import 'package:sprints_shopping_app_with_localization/core/routing/routes.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/colors_manager.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/font_family_helper.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/styles.dart';
import 'package:sprints_shopping_app_with_localization/core/widgets/loaading_animation.dart';
import 'package:sprints_shopping_app_with_localization/features/signin/logic/login_cubit/login_cubit.dart';
import 'package:sprints_shopping_app_with_localization/features/signin/logic/login_cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: LoadingAnimation(),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            Navigator.pushReplacementNamed(context, Routes.homeView);
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
