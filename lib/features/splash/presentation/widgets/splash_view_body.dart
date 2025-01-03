import 'package:flutter/material.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/constants.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/extensions.dart';
import 'package:sprints_shopping_app_with_localization/core/routing/routes.dart';
import 'package:sprints_shopping_app_with_localization/features/splash/presentation/widgets/build_splash_view_body.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _leftSlideAnimation;
  late Animation<Offset> _rightSlideAnimation;
  late Animation<double> _logoRotationAnimation;
  late Animation<double> _logoFadeAnimation;

  @override
  void initState() {
    super.initState();
    _initAnimations();
    _navigateToHome();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _initAnimations() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _leftSlideAnimation = Tween<Offset>(
      begin: const Offset(0, 1.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 1, curve: Curves.easeInOut),
      ),
    );

    _rightSlideAnimation = Tween<Offset>(
      begin: const Offset(0, -1.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 1, curve: Curves.easeInOut),
      ),
    );

    _logoRotationAnimation =
        Tween<double>(begin: 0.0, end: 2 * 3.141592653589793).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
      ),
    );

    _logoFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.5, 1.0, curve: Curves.easeIn),
      ),
    );

    _animationController.forward();
  }

  void _navigateToHome() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        if (mounted) {
          context.pushReplacementNamed(
            isUserLoggedIn ? Routes.homeView : Routes.signinView,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BuildSplashViewBody(
      leftSlideAnimation: _leftSlideAnimation,
      rightSlideAnimation: _rightSlideAnimation,
      logoRotationAnimation: _logoRotationAnimation,
      logoScaleAnimation: _logoRotationAnimation,
      logoFadeAnimation: _logoFadeAnimation,
    );
  }
}
