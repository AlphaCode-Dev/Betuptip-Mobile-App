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

  /// `Create an account`
  String get create_account {
    return Intl.message(
      'Create an account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Kindly provide the required infomation to continue.`
  String get create_account_sub {
    return Intl.message(
      'Kindly provide the required infomation to continue.',
      name: 'create_account_sub',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get first_name {
    return Intl.message(
      'First Name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get last_name {
    return Intl.message(
      'Last Name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_number {
    return Intl.message(
      'Phone Number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get email_address {
    return Intl.message(
      'Email Address',
      name: 'email_address',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get show {
    return Intl.message(
      'Show',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `Sign In With Google`
  String get sign_in_with_google {
    return Intl.message(
      'Sign In With Google',
      name: 'sign_in_with_google',
      desc: '',
      args: [],
    );
  }

  /// `I have read and agreed to the `
  String get terms_of_service {
    return Intl.message(
      'I have read and agreed to the ',
      name: 'terms_of_service',
      desc: '',
      args: [],
    );
  }

  /// `terms `
  String get term {
    return Intl.message(
      'terms ',
      name: 'term',
      desc: '',
      args: [],
    );
  }

  /// `and `
  String get and {
    return Intl.message(
      'and ',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `privacy policy`
  String get privacy {
    return Intl.message(
      'privacy policy',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get Continue {
    return Intl.message(
      'Continue',
      name: 'Continue',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get have_an_account {
    return Intl.message(
      'Already have an account? ',
      name: 'have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Services`
  String get terms_header {
    return Intl.message(
      'Terms and Services',
      name: 'terms_header',
      desc: '',
      args: [],
    );
  }

  /// `Our ability to provide accurate forecasts. Our extensive track record is evidenced by past predictions and glowing reviews from numerous satisfied subscribers.\nFree subscribers receive a limited number of daily tips, including up to 10 high-percentage winning games. No need for a paid subscription to start capitalizing on our daily insights.\nPaid subscribers enjoy an elevated experience, gaining access to an even greater volume of meticulously analyzed tips. With our team of seasoned sports analysts, rest assured that losses to bookmakers need not be a concern any longer.`
  String get terms_details {
    return Intl.message(
      'Our ability to provide accurate forecasts. Our extensive track record is evidenced by past predictions and glowing reviews from numerous satisfied subscribers.\nFree subscribers receive a limited number of daily tips, including up to 10 high-percentage winning games. No need for a paid subscription to start capitalizing on our daily insights.\nPaid subscribers enjoy an elevated experience, gaining access to an even greater volume of meticulously analyzed tips. With our team of seasoned sports analysts, rest assured that losses to bookmakers need not be a concern any longer.',
      name: 'terms_details',
      desc: '',
      args: [],
    );
  }

  /// `Welcome\nBack`
  String get Welcome_Back {
    return Intl.message(
      'Welcome\nBack',
      name: 'Welcome_Back',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to continue`
  String get Welcome_sub {
    return Intl.message(
      'Sign in to continue',
      name: 'Welcome_sub',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get login_email {
    return Intl.message(
      'Email Address',
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

  /// `Sign in`
  String get sign_in {
    return Intl.message(
      'Sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgot_password {
    return Intl.message(
      'Forgot your password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your registered email address below\nto receive password reset instructions`
  String get forgot_password_sub {
    return Intl.message(
      'Enter your registered email address below\nto receive password reset instructions',
      name: 'forgot_password_sub',
      desc: '',
      args: [],
    );
  }

  /// `Good Morning`
  String get profile_greet {
    return Intl.message(
      'Good Morning',
      name: 'profile_greet',
      desc: '',
      args: [],
    );
  }

  /// `Harry Maguire (c)`
  String get profile_name {
    return Intl.message(
      'Harry Maguire (c)',
      name: 'profile_name',
      desc: '',
      args: [],
    );
  }

  /// `Football News`
  String get football_news {
    return Intl.message(
      'Football News',
      name: 'football_news',
      desc: '',
      args: [],
    );
  }

  /// `See all`
  String get see_all {
    return Intl.message(
      'See all',
      name: 'see_all',
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
