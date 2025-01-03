import 'package:flutter/material.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/assets.dart';
import 'package:sprints_shopping_app_with_localization/features/home/widgets/product_item.dart';

class HotOffersListView extends StatelessWidget {
  const HotOffersListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 8,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: ProductItem(
            image: ImageAssets.camera8,
          ),
        );
      },
    );
  }
}
