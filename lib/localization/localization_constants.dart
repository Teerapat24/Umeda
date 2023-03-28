import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


const String LANGUAGE_CODE = 'languageCode';

const String ENGLISH = 'en';
const String THAI = 'th';
const String JAPAN = 'ja';
const String CHINA = 'zh';

Future<Locale>setLocale(String languageCode)async{
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(LANGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale>getLocale()async{
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LANGUAGE_CODE)??ENGLISH;
  return _locale(languageCode);
}

Locale _locale(String languageCode){
  switch (languageCode){
    case ENGLISH:
      return Locale(ENGLISH,'US');
    case THAI:
      return Locale(THAI,'TH');
    case JAPAN:
      return Locale(JAPAN,'JA');
    case CHINA:
      return Locale(CHINA,'ZH');
    default:
      return Locale(ENGLISH,'US');
  }
}
AppLocalizations translation(BuildContext context){
  return AppLocalizations.of(context)!;
}

