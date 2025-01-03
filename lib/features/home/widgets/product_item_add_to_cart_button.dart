import 'package:flutter/material.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/display_flush_bar.dart';

class ProductItemAddToCartButton extends StatelessWidget {
  const ProductItemAddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: IconButton(
        onPressed: () {
          displayFlushBar(
            context,
            message: 'Added to cart',
            color: Colors.grey[800]!,
            icon: Icons.check_box,
          );
        },
        icon: const Icon(
          Icons.add_shopping_cart,
          color: Colors.white,
        ),
      ),
    );
  }
}
