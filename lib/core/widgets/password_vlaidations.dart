import 'package:flutter/material.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/spacing.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/colors_manager.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/styles.dart';
import 'package:sprints_shopping_app_with_localization/generated/l10n.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(
            S.of(context).password_validation_lowercase, hasLowerCase),
        verticalSpace(2),
        buildValidationRow(
            S.of(context).password_validation_uppercase, hasUpperCase),
        verticalSpace(2),
        buildValidationRow(S.of(context).password_validation_special_character,
            hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow(S.of(context).password_validation_number, hasNumber),
        verticalSpace(2),
        buildValidationRow(
            S.of(context).password_validation_min_length, hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.accentColor,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: Styles.font18White600.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: ColorsManager.accentColor,
            fontWeight: FontWeight.w500,
            // fontFamily: FontFamilyHelper.clashDisplay,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
