import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;
  Map<String, String> _localizedStrings = <String, String>{};

  // Helper method to keep the code in the widgets concise
  // Localizations are accessed using an InheritedWidget "of" syntax
  static AppLocalizations? of(BuildContext context) => Localizations.of<AppLocalizations>(context, AppLocalizations);

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  // List all of the app's supported locales here
  static const Iterable<Locale> supportedLocales = <Locale>[
    Locale('en', 'US'),
    Locale('pt', 'BR'),
  ];

  // These delegates make sure that the localization data for the proper language is loaded
  static const Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    GlobalCupertinoLocalizations.delegate,
    // A class which loads the translations from JSON files
    AppLocalizations.delegate,
    // Built-in localization of basic text for Material widgets
    GlobalMaterialLocalizations.delegate,
    // Built-in localization for text direction LTR/RTL
    GlobalWidgetsLocalizations.delegate,
    DefaultCupertinoLocalizations.delegate,
  ];

  // Returns a locale which will be used by the app
  static Locale? localeResolutionCallback(Locale? locale, Iterable<Locale> supportedLocales) {
    for (final Locale supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale?.languageCode) {
        return supportedLocale;
      }
    }
    final Locale defaultLocale = supportedLocales.toList()[0];
    return defaultLocale;
  }

  Future<bool> load() async {
    try {
      // Load the language JSON file from the "lang" folder
      final String jsonString = await rootBundle.loadString('lang/${locale.languageCode}.json');
      _localizedStrings = Map<String, String>.from(json.decode(jsonString) as Map<String, dynamic>);
      return true;
    } catch (e, stackTrace) {
      log(e.toString(), name: 'AppLocalizations.load', stackTrace: stackTrace);
      return false;
    }
  }

  // This method will be called from every widget which needs a localized text
  String translate(String key) => _localizedStrings[key] ?? '';
}

// LocalizationsDelegate is a factory for a set of localized resources
// In this case, the localized strings will be gotten in an AppLocalizations object
class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  // This delegate instance will never change (it doesn't even have fields!)
  // It can provide a constant constructor.
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // Include all of your supported language codes here
    final List<String> langages = <String>['en', 'pt'];
    return langages.contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    // AppLocalizations class is where the JSON loading actually runs
    try {
      final AppLocalizations localizations = AppLocalizations(locale);
      await localizations.load();
      return localizations;
    } catch (e, stackTrace) {
      log(e.toString(), name: '_AppLocalizationsDelegate.load', stackTrace: stackTrace);
      return Future<AppLocalizations>.error(e, stackTrace);
    }
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
