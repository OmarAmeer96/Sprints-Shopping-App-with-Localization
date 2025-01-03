import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/constants.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/shared_pref_helper.dart';
import 'package:sprints_shopping_app_with_localization/core/networking/dio_factory.dart';
import 'package:sprints_shopping_app_with_localization/features/signin/data/models/login_request_body.dart';
import 'package:sprints_shopping_app_with_localization/features/signin/data/repos/loign_repo.dart';
import 'package:sprints_shopping_app_with_localization/features/signin/logic/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void emitLoginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        await saveUserToken(loginResponse.userData!.token!);
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  // Save the token to shared preferences
  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);

    // This is to solve a problem that the [DioFactory] initializes with no token in the begginning, and after the login the token should be refreshed in the [DioFactory], the other part is in [DioFactory] file line 37.
    DioFactory.setTokenAfterLogin(token);
  }
}
