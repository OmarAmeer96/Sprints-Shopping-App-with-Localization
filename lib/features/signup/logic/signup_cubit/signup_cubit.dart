import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/data/models/signup_request_body.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/data/repos/signup_repo.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/logic/signup_cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void emitSignupState() async {
    emit(const SignupState.loading());
    final response = await _signupRepo.signup(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneNumberController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        gender: '0',
      ),
    );
    response.when(
      success: (signupResponse) {
        emit(SignupState.success(signupResponse));
      },
      failure: (error) {
        emit(SignupState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
