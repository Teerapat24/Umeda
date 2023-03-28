import 'package:flutter/material.dart';

class L10n{
  static final all = [
    const Locale('en'),
    const Locale('th'),
    const Locale('ja'),
    const Locale('zh'),
  ];

  static String getLang(String code){
    switch (code){
      case 'en':
      return 'En';
      case 'th':
      return 'Th';
      case 'ja':
      return 'Ja';
      case 'zh':
      return 'Zh';
      default:
      return 'En';
    }
  }
}