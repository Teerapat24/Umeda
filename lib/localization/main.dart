import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:umeda/l10n/l10n.dart';
import 'package:umeda/localization/localization_constants.dart';
import 'package:umeda/localization/localization_system_page.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]
  );
  runApp(const MainLanguage());
}

class MainLanguage extends StatefulWidget {
  const MainLanguage({super.key});

  @override
  State<MainLanguage> createState() => _MainLanguageState();
  static void setLocale(BuildContext context,Locale newLocale){
    _MainLanguageState? state = context.findAncestorStateOfType<_MainLanguageState>();
    state?.setLocale(newLocale);
  }
}

class _MainLanguageState extends State<MainLanguage> {
  Locale? _locale;

  setLocale(Locale locale){
    setState(() {
      _locale =locale;
    });
  } 

  @override
  void didChangeDependencies(){
    getLocale().then((locale) => setLocale(locale));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: L10n.all,
      locale: _locale,
      home: Scaffold(
        body: localizationSystem(),
      ),
    );
  }
}
