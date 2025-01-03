import 'package:flutter/material.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/assets.dart';

class CustomPositionedHomeOverlay extends StatelessWidget {
  const CustomPositionedHomeOverlay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Image.asset(
        ImageAssets.homeOverlay,
      ),
    );
  }
}
