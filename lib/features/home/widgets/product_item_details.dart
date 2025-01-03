import 'package:flutter/material.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/styles.dart';

class ProductItemDetails extends StatelessWidget {
  const ProductItemDetails({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              'Product ${index + 1}',
              style: Styles.font14ProductName,
            ),
            const Spacer(),
            Text(
              'EGP ${index + 1}',
              style: Styles.font12ProductPrice,
            ),
          ],
        ),
      ),
    );
  }
}
