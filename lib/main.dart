import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprints_shopping_app_with_localization/core/di/dependency_injection.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/constants.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/extensions.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/shared_pref_helper.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/simple_bloc_observer.dart';
import 'package:sprints_shopping_app_with_localization/core/routing/app_router.dart';
import 'package:sprints_shopping_app_with_localization/pixels_app.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
  ));

  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  Bloc.observer = SimpleBlocObserver();
  await ScreenUtil.ensureScreenSize();

  // Check if the user is logged in or not
  await checkIfUserIsLoggedIn();

  runApp(
    PixelsApp(
      appRouter: AppRouter(),
    ),
  );
}

// Check if the user is logged in or not
Future<void> checkIfUserIsLoggedIn() async {
  String? userToken = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  debugPrint('User Token: $userToken');
  if (userToken.isNullOrEmpty()) {
    isUserLoggedIn = false;
  } else {
    isUserLoggedIn = true;
  }
  debugPrint('Is User Logged In: $isUserLoggedIn');
}
