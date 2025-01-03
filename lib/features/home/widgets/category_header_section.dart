import 'package:flutter/material.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/styles.dart';

class CategoryHeaderSection extends StatelessWidget {
  const CategoryHeaderSection({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.font20WhiteSemiBold,
        ),
      ],
    );
  }
}
