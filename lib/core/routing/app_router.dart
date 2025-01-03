import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sprints_shopping_app_with_localization/core/di/dependency_injection.dart';
import 'package:sprints_shopping_app_with_localization/core/routing/routes.dart';
import 'package:sprints_shopping_app_with_localization/features/signin/logic/login_cubit/login_cubit.dart';
import 'package:sprints_shopping_app_with_localization/features/signin/ui/signin_view.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:sprints_shopping_app_with_localization/features/signup/ui/signup_view.dart';
import 'package:sprints_shopping_app_with_localization/features/home/home_view.dart';
import 'package:sprints_shopping_app_with_localization/features/splash/presentation/splash_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // This arguments to be passed in any screen like this: (arguments as ClassName).
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashView:
        return PageTransition(
          type: PageTransitionType.fade,
          child: const SplashView(),
          settings: settings,
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeInOut,
        );

      case Routes.signinView:
        return PageTransition(
          type: PageTransitionType.fade,
          child: BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const SigninView(),
          ),
          settings: settings,
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeInOut,
        );

      case Routes.signupView:
        return PageTransition(
          type: PageTransitionType.fade,
          child: BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupView(),
          ),
          settings: settings,
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeInOut,
        );

      case Routes.homeView:
        return PageTransition(
          type: PageTransitionType.fade,
          child: const HomeView(),
          settings: settings,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );

      //? How to use:
      // Navigator.pushReplacementNamed(context, Routes.homeView);

      default:
        return null;
    }
  }
}
