import 'package:flutter/material.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/display_flush_bar.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/spacing.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/styles.dart';
import 'package:sprints_shopping_app_with_localization/features/home/widgets/product_item_button.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 160 / 222,
      child: Stack(
        children: [
          Container(
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF383c43),
                  Color(0x003D414B),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 60,
                  offset: Offset(0, 20),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    ),
                  ),
                  verticalSpace(8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      textAlign: TextAlign.start,
                      "SONY 200mm Zoom",
                      overflow: TextOverflow.ellipsis,
                      style: Styles.font12ProductName,
                    ),
                  ),
                  verticalSpace(4),
                  Row(
                    children: [
                      Text(
                        "\$6000",
                        style: Styles.font14ProductPrice,
                      ),
                      Spacer(),
                      ProductItemButton(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                displayFlushBar(
                  context,
                  message: "Added to the cart",
                  color: Color(0xFF3b3e45),
                  icon: Icons.check_box,
                );
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  color: Color(0xFF3b3e45),
                  shape: CircleBorder(),
                ),
                child: Icon(Icons.shopping_cart_checkout_rounded),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
