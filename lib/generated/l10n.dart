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

  /// `Added to the cart`
  String get added_to_cart {
    return Intl.message(
      'Added to the cart',
      name: 'added_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get login_welcome {
    return Intl.message(
      'Welcome Back',
      name: 'login_welcome',
      desc: '',
      args: [],
    );
  }

  /// `We're excited to have you back, can't wait to see what you've been up to since you last logged in.`
  String get login_welcome_message {
    return Intl.message(
      'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
      name: 'login_welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get login_email {
    return Intl.message(
      'Email',
      name: 'login_email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get login_password {
    return Intl.message(
      'Password',
      name: 'login_password',
      desc: '',
      args: [],
    );
  }

  /// `At least one lowercase letter`
  String get password_validation_lowercase {
    return Intl.message(
      'At least one lowercase letter',
      name: 'password_validation_lowercase',
      desc: '',
      args: [],
    );
  }

  /// `At least one uppercase letter`
  String get password_validation_uppercase {
    return Intl.message(
      'At least one uppercase letter',
      name: 'password_validation_uppercase',
      desc: '',
      args: [],
    );
  }

  /// `At least one special character`
  String get password_validation_special_character {
    return Intl.message(
      'At least one special character',
      name: 'password_validation_special_character',
      desc: '',
      args: [],
    );
  }

  /// `At least one number`
  String get password_validation_number {
    return Intl.message(
      'At least one number',
      name: 'password_validation_number',
      desc: '',
      args: [],
    );
  }

  /// `At least 8 characters`
  String get password_validation_min_length {
    return Intl.message(
      'At least 8 characters',
      name: 'password_validation_min_length',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_button {
    return Intl.message(
      'Login',
      name: 'login_button',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get login_donot_have_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'login_donot_have_account',
      desc: '',
      args: [],
    );
  }

  /// ` Sign Up`
  String get login_signup {
    return Intl.message(
      ' Sign Up',
      name: 'login_signup',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get signup_welcome {
    return Intl.message(
      'Create Account',
      name: 'signup_welcome',
      desc: '',
      args: [],
    );
  }

  /// `Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!`
  String get signup_welcome_message {
    return Intl.message(
      'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
      name: 'signup_welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get signup_name {
    return Intl.message(
      'Name',
      name: 'signup_name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get signup_email {
    return Intl.message(
      'Email',
      name: 'signup_email',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get signup_phone_number {
    return Intl.message(
      'Phone Number',
      name: 'signup_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get signup_password {
    return Intl.message(
      'Password',
      name: 'signup_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get signup_confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'signup_confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup_button {
    return Intl.message(
      'Sign Up',
      name: 'signup_button',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get signup_already_have_account {
    return Intl.message(
      'Already have an account?',
      name: 'signup_already_have_account',
      desc: '',
      args: [],
    );
  }

  /// ` Sign in`
  String get signup_signin {
    return Intl.message(
      ' Sign in',
      name: 'signup_signin',
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
