import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/assets.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/spacing.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/styles.dart';

class BuildSplashViewBody extends StatelessWidget {
  const BuildSplashViewBody({
    super.key,
    required Animation<Offset> leftSlideAnimation,
    required Animation<Offset> rightSlideAnimation,
    required Animation<double> logoScaleAnimation,
    required this.logoRotationAnimation,
    required this.logoFadeAnimation,
  })  : _leftSlideAnimation = leftSlideAnimation,
        _rightSlideAnimation = rightSlideAnimation;

  final Animation<Offset> _leftSlideAnimation;
  final Animation<Offset> _rightSlideAnimation;
  // final Animation<double> _logoScaleAnimation;
  final Animation<double> logoRotationAnimation;
  final Animation<double> logoFadeAnimation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: MediaQuery.of(context).size.width * 0.9,
          child: Align(
            alignment: Alignment.centerLeft,
            child: ClipRect(
              child: SlideTransition(
                position: _leftSlideAnimation,
                child: SvgPicture.asset(
                  SvgAssets.splashItem,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.9,
          child: Align(
            alignment: Alignment.centerRight,
            child: ClipRect(
              child: SlideTransition(
                position: _rightSlideAnimation,
                child: SvgPicture.asset(
                  SvgAssets.splashItem,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedBuilder(
                  animation: logoRotationAnimation,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: logoRotationAnimation.value,
                      child: child,
                    );
                  },
                  child: SvgPicture.asset(
                    SvgAssets.lensIcon,
                    width: 80,
                  ),
                ),
                verticalSpace(20),
                FadeTransition(
                  opacity: logoFadeAnimation,
                  child: Text(
                    'PixelsCo.',
                    style: Styles.font22SplashText,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
