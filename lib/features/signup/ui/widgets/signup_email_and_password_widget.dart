import 'package:sprints_shopping_app_with_localization/core/helpers/app_regex.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/spacing.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/colors_manager.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/font_family_helper.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/styles.dart';
import 'package:sprints_shopping_app_with_localization/core/widgets/custom_main_text_form_field.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupEmailAndPasswordWidget extends StatefulWidget {
  const SignupEmailAndPasswordWidget({super.key});

  @override
  State<SignupEmailAndPasswordWidget> createState() =>
      _SignupEmailAndPasswordWidgetState();
}

class _SignupEmailAndPasswordWidgetState
    extends State<SignupEmailAndPasswordWidget> {
  bool isPassTextFieldObscureText = true;
  bool isConfirmPassTextFieldObscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  final FocusNode nameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode phoneNumberFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode confirmPasswordFocusNode = FocusNode();

  @override
  void initState() {
    passwordController = context.read<SignupCubit>().passwordController;
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
      key: context.read<SignupCubit>().formKey,
      autovalidateMode: context.read<SignupCubit>().autovalidateMode,
      child: Column(
        children: [
          CustomMainTextFormFiels(
            labelText: 'Name',
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
            controller: context.read<SignupCubit>().nameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your name';
              } else {
                return null;
              }
            },
            prefixIcon: const Icon(
              Icons.person_outline,
              color: ColorsManager.accentColor,
            ),
            focusNode: nameFocusNode,
            nextFocusNode: emailFocusNode,
            fillColor: Colors.transparent,
          ),
          verticalSpace(18),
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
            controller: context.read<SignupCubit>().emailController,
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
            nextFocusNode: phoneNumberFocusNode,
            fillColor: Colors.transparent,
          ),
          verticalSpace(18),
          CustomMainTextFormFiels(
            labelText: 'Phone Number',
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
            controller: context.read<SignupCubit>().phoneNumberController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your phone number';
              } else if (!AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number';
              }
            },
            prefixIcon: const Icon(
              Icons.phone,
              color: ColorsManager.accentColor,
            ),
            focusNode: phoneNumberFocusNode,
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
            isObscureText: isPassTextFieldObscureText,
            style: Styles.font22AppBar.copyWith(
              fontSize: 13,
              color: Colors.white,
              fontFamily: FontFamilyHelper.suwannaphumBlack,
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPassTextFieldObscureText = !isPassTextFieldObscureText;
                });
              },
              child: Icon(
                isPassTextFieldObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: ColorsManager.accentColor,
              ),
            ),
            prefixIcon: const Icon(
              Icons.password_rounded,
              color: ColorsManager.accentColor,
            ),
            controller: context.read<SignupCubit>().passwordController,
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
            nextFocusNode: confirmPasswordFocusNode,
            fillColor: Colors.transparent,
          ),
          verticalSpace(18),
          CustomMainTextFormFiels(
            labelText: 'Confirm Password',
            labelStyle: Styles.font22AppBar.copyWith(
              fontSize: 13,
              color: ColorsManager.accentColor,
              fontFamily: FontFamilyHelper.suwannaphumBlack,
            ),
            isObscureText: isConfirmPassTextFieldObscureText,
            style: Styles.font22AppBar.copyWith(
              fontSize: 13,
              color: Colors.white,
              fontFamily: FontFamilyHelper.suwannaphumBlack,
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isConfirmPassTextFieldObscureText =
                      !isConfirmPassTextFieldObscureText;
                });
              },
              child: Icon(
                isConfirmPassTextFieldObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: ColorsManager.accentColor,
              ),
            ),
            prefixIcon: const Icon(
              Icons.password_rounded,
              color: ColorsManager.accentColor,
            ),
            controller: context.read<SignupCubit>().confirmPasswordController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password again';
              }
              if (value !=
                  context.read<SignupCubit>().passwordController.text) {
                return 'Passwords do not match';
              } else {
                return null;
              }
            },
            focusNode: confirmPasswordFocusNode,
            fillColor: Colors.transparent,
          ),

          // To reduce the space, so I commented it out
          // PasswordValidations(
          //   hasLowerCase: hasLowerCase,
          //   hasUpperCase: hasUpperCase,
          //   hasSpecialCharacters: hasSpecialCharacters,
          //   hasNumber: hasNumber,
          //   hasMinLength: hasMinLength,
          // ),
          // verticalSpace(18),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    nameFocusNode.dispose();
    emailFocusNode.dispose();
    phoneNumberFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    super.dispose();
  }
}
