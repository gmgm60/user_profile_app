


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// class AppLocalizations {
//   final Locale locale;
// Map<String,String>? _localizedStrings;
//
// static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationDelegate();
//
//
//
//   AppLocalizations(this.locale);
//
//   static AppLocalizations of(BuildContext context) =>
//       Localizations.of<AppLocalizations>(context, AppLocalizations)!;
//
//
//   Future<bool> load()async{
//     String jsonString = await rootBundle.loadString('lang/${locale.languageCode}.json');
//     Map<String,dynamic> jsonMap = json.decode(jsonString);
//     _localizedStrings = jsonMap.map((key, value) => MapEntry(key, value.toString()));
//     return true;
//   }
//
//   String translate(String key){
//     return _localizedStrings?[key] ?? "no translation" ;
//   }
//
// }
//
// class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations>{
//
//   const _AppLocalizationDelegate();
//
//   @override
//   bool isSupported(Locale locale) => ['en','ar'].contains(locale.languageCode);
//
//   @override
//   Future<AppLocalizations> load(Locale locale)async {
//     final AppLocalizations localizations = AppLocalizations(locale);
//     await localizations.load();
//     return localizations;
//   }
//
//   @override
//   bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
//     return false;
//   }
//
// }



extension LocalizationContext on BuildContext {
  AppLocalizations get translate{
   // return key;
    return Localizations.of<AppLocalizations>(this, AppLocalizations)!;
  }
}








