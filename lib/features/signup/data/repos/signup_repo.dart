import 'package:sprints_shopping_app_with_localization/core/networking/api_error_handler.dart';
import 'package:sprints_shopping_app_with_localization/core/networking/api_result.dart';
import 'package:sprints_shopping_app_with_localization/core/networking/api_service.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/data/models/signup_request_body.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/data/models/signup_response.dart';

class SignupRepo {
  final ApiService _apiServices;

  SignupRepo(this._apiServices);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiServices.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
