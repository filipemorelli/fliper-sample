import 'package:fliper/app/app_colors.dart';
import 'package:fliper/app/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      debugShowCheckedModeBanner: false,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      localeResolutionCallback: AppLocalizations.localeResolutionCallback,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        dividerColor: AppColors.divider,
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
      ),
      initialRoute: '/',
    ).modular();
  }
}
