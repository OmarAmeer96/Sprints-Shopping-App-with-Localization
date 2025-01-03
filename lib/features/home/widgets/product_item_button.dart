import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/assets.dart';

class ProductItemButton extends StatelessWidget {
  const ProductItemButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () {},
      child: Container(
        width: 24,
        height: 22,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [
              Color(0xFF3b3e45),
              Color(0x001F2125),
            ],
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.63, color: Color(0x33374957)),
            borderRadius: BorderRadius.circular(5),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 23,
              offset: Offset(0, 10),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child: SvgPicture.asset(SvgAssets.arrowForward),
        ),
      ),
    );
  }
}
