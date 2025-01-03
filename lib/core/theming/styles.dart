import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/colors_manager.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/font_family_helper.dart';

class Styles {
  static TextStyle font20WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontSize: 20.sp,
    fontFamily: FontFamilyHelper.clashDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: 2,
  );

  static TextStyle font12ProductName = TextStyle(
    color: Colors.white,
    fontSize: 12.sp,
    fontFamily: FontFamilyHelper.clashDisplay,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.60,
  );

  static TextStyle font14ProductPrice = TextStyle(
    color: Colors.white,
    fontSize: 14.sp,
    fontFamily: FontFamilyHelper.clashDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.70,
  );

  static TextStyle font12HomeBanner = TextStyle(
    color: Colors.white,
    fontSize: 12.sp,
    fontFamily: FontFamilyHelper.clashDisplay,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.52,
  );

  static TextStyle font22SplashText = TextStyle(
    color: Colors.white,
    fontSize: 22.sp,
    fontFamily: FontFamilyHelper.clashDisplay,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.10,
  );

  // Appointment
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.primaryColor,
    fontFamily: FontFamilyHelper.clashDisplay,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font18BlackBold = TextStyle(
    fontSize: 20.sp,
    color: ColorsManager.primaryColor,
    fontFamily: FontFamilyHelper.clashDisplay,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font18White600 = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
  );

  static TextStyle font13GreyBold = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.primaryColor,
    fontFamily: FontFamilyHelper.clashDisplay,
    fontWeight: FontWeight.w400,
  );

  static TextStyle enabledTextFieldsLabelText = TextStyle(
    color: ColorsManager.primaryColor,
    fontSize: 14.sp,
    fontFamily: FontFamilyHelper.clashDisplay,
    fontWeight: FontWeight.w500,
  );
  static TextStyle focusedTextFieldsLabelText = TextStyle(
    color: ColorsManager.primaryColor,
    fontSize: 14.sp,
    fontFamily: FontFamilyHelper.clashDisplay,
    fontWeight: FontWeight.w500,
  );

  // OLD
  static TextStyle font22AppBar = TextStyle(
    color: Colors.black,
    fontSize: 22,
    fontFamily: FontFamilyHelper.suwannaphumBlack,
  );

  static TextStyle font20HeaderSection = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontFamily: FontFamilyHelper.suwannaphumBold,
  );

  static TextStyle font14HeaderSection = TextStyle(
    color: Colors.deepOrange,
    fontSize: 14,
    fontFamily: FontFamilyHelper.suwannaphumRegular,
  );

  static TextStyle font14ProductName = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontFamily: FontFamilyHelper.suwannaphumBold,
  );

  static TextStyle font12ProductPrice = TextStyle(
    color: Colors.grey[800],
    fontSize: 12,
    fontFamily: FontFamilyHelper.suwannaphumRegular,
  );
}
