import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/assets.dart';
import 'package:sprints_shopping_app_with_localization/core/language_cubit.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/colors_manager.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              decoration: BoxDecoration(
                color: ColorsManager.primaryColor,
                image: DecorationImage(
                  alignment: Alignment.topLeft,
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                    ImageAssets.homeOverlay,
                  ),
                ),
              ),
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
                          SvgAssets.homeCartIcon,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          context.read<LanguageCubit>().toggleLanguage();
                        },
                        icon: SvgPicture.asset(
                          SvgAssets.homeLangIcon,
                          width: 35,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
