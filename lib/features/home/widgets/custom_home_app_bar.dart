import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/assets.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/colors_manager.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      color: ColorsManager.primaryColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 16.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                SvgAssets.homeAppLogo,
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  SvgAssets.homeLangIcon,
                  height: 35,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  SvgAssets.homeCartIcon,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
