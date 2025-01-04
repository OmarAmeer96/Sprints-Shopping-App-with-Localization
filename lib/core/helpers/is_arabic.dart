import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprints_shopping_app_with_localization/core/language_cubit.dart';

bool isArabic(BuildContext context) {
  return context.read<LanguageCubit>().state.languageCode == 'ar';
}
