import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/constants.dart';
import 'package:sprints_shopping_app_with_localization/core/helpers/shared_pref_helper.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(const Locale('en')) {
    _loadCurrentLocale();
  }

  void _loadCurrentLocale() async {
    String? currentLocale =
        await SharedPrefHelper.getString(SharedPrefKeys.currentLocale);
    if (currentLocale != null) {
      emit(Locale(currentLocale));
    }
  }

  void toggleLanguage() async {
    if (state.languageCode == 'en') {
      await saveCurrentLocale("ar");
      emit(const Locale('ar'));
    } else {
      await saveCurrentLocale("en");
      emit(const Locale('en'));
    }
  }

  Future<dynamic> saveCurrentLocale(String locale) async =>
      await SharedPrefHelper.setData(SharedPrefKeys.currentLocale, locale);
}
