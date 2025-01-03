import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/app_regex.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/spacing.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/colors_manager.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/font_family_helper.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/styles.dart';
import 'package:sprints_shopping_app_with_localization/core/widgets/custom_main_text_form_field.dart';
import 'package:sprints_shopping_app_with_localization/core/widgets/password_vlaidations.dart';
import 'package:sprints_shopping_app_with_localization/features/signin/logic/login_cubit/login_cubit.dart';

class LoginEmailAndPasswordWidget extends StatefulWidget {
  const LoginEmailAndPasswordWidget({super.key});

  @override
  State<LoginEmailAndPasswordWidget> createState() =>
      _LoginEmailAndPasswordWidgetState();
}

class _LoginEmailAndPasswordWidgetState
    extends State<LoginEmailAndPasswordWidget> {
  bool isObscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    super.initState();
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      autovalidateMode: context.read<LoginCubit>().autovalidateMode,
      child: Column(
        children: [
          CustomMainTextFormFiels(
            labelText: 'Email',
            labelStyle: Styles.font22AppBar.copyWith(
              fontSize: 13,
              color: ColorsManager.accentColor,
              fontFamily: FontFamilyHelper.suwannaphumBlack,
            ),
            isObscureText: false,
            style: Styles.font22AppBar.copyWith(
              fontSize: 13,
              color: Colors.white,
              fontFamily: FontFamilyHelper.suwannaphumBlack,
            ),
            controller: context.read<LoginCubit>().emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
              if (!AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              } else {
                return null;
              }
            },
            prefixIcon: const Icon(
              Icons.email_outlined,
              color: ColorsManager.accentColor,
            ),
            focusNode: emailFocusNode,
            nextFocusNode: passwordFocusNode,
            fillColor: Colors.transparent,
          ),
          verticalSpace(18),
          CustomMainTextFormFiels(
            labelText: 'Password',
            labelStyle: Styles.font22AppBar.copyWith(
              fontSize: 13,
              color: ColorsManager.accentColor,
              fontFamily: FontFamilyHelper.suwannaphumBlack,
            ),
            isObscureText: isObscureText,
            style: Styles.font22AppBar.copyWith(
              fontSize: 13,
              color: Colors.white,
              fontFamily: FontFamilyHelper.suwannaphumBlack,
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
                color: ColorsManager.accentColor,
              ),
            ),
            prefixIcon: const Icon(
              Icons.password_rounded,
              color: ColorsManager.accentColor,
            ),
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              if (!AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password';
              } else {
                return null;
              }
            },
            focusNode: passwordFocusNode,
            fillColor: Colors.transparent,
          ),
          verticalSpace(18),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
}
