// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `New Vintage Collection`
  String get banner_text {
    return Intl.message(
      'New Vintage Collection',
      name: 'banner_text',
      desc: '',
      args: [],
    );
  }

  /// `Explore Now`
  String get banner_button {
    return Intl.message(
      'Explore Now',
      name: 'banner_button',
      desc: '',
      args: [],
    );
  }

  /// `Our Products`
  String get our_products_section_header {
    return Intl.message(
      'Our Products',
      name: 'our_products_section_header',
      desc: '',
      args: [],
    );
  }

  /// `SONY 200mm Zoom`
  String get product_name {
    return Intl.message(
      'SONY 200mm Zoom',
      name: 'product_name',
      desc: '',
      args: [],
    );
  }

  /// `$ 1,200`
  String get product_price {
    return Intl.message(
      '\$ 1,200',
      name: 'product_price',
      desc: '',
      args: [],
    );
  }

  /// `Hot Offers`
  String get hot_offers_section_header {
    return Intl.message(
      'Hot Offers',
      name: 'hot_offers_section_header',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
