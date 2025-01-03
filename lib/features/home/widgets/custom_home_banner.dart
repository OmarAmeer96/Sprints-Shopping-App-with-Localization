import 'package:flutter/material.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/assets.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/colors_manager.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/styles.dart';
import 'package:sprints_shopping_app_with_localization/features/home/widgets/custom_home_banner_button.dart';

class CustomHomeBanner extends StatelessWidget {
  const CustomHomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            ColorsManager.primaryColorShade2,
            ColorsManager.primaryColorShade1,
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 40,
            offset: Offset(0, 30),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Vintage Collection',
                  style: Styles.font20WhiteSemiBold,
                ),
                const SizedBox(height: 8),
                CustomHomeBannerButton(),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                ImageAssets.camera6,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
