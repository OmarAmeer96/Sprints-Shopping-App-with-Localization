import 'package:flutter/material.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/spacing.dart';
import 'package:sprints_shopping_app_with_localization/features/home/widgets/best_selling_grid_view.dart';
import 'package:sprints_shopping_app_with_localization/features/home/widgets/category_header_section.dart';
import 'package:sprints_shopping_app_with_localization/features/home/widgets/custom_home_app_bar.dart';
import 'package:sprints_shopping_app_with_localization/features/home/widgets/custom_home_banner.dart';
import 'package:sprints_shopping_app_with_localization/features/home/widgets/custom_positioned_home_overlay.dart';
import 'package:sprints_shopping_app_with_localization/features/home/widgets/hot_offers_list_view.dart';
import 'package:sprints_shopping_app_with_localization/generated/l10n.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPositionedHomeOverlay(),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.12,
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                children: [
                  CustomHomeBanner(),
                  verticalSpace(20),
                  CategoryHeaderSection(
                    title: S.of(context).our_products_section_header,
                  ),
                  verticalSpace(16),
                  BestSellingGridView(),
                  verticalSpace(20),
                  CategoryHeaderSection(
                    title: S.of(context).hot_offers_section_header,
                  ),
                  verticalSpace(16),
                  SizedBox(
                    height: 220,
                    child: HotOffersListView(),
                  ),
                  verticalSpace(20),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomHomeAppBar(),
          ),
        ],
      ),
    );
  }
}
