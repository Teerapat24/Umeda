import 'package:flutter/material.dart';
import 'package:umeda/l10n/l10n.dart';
import 'package:umeda/localization/localization_class.dart';
import 'package:umeda/localization/localization_constants.dart';
import 'package:umeda/localization/main.dart';


class localizationSystem extends StatefulWidget {
  const localizationSystem({super.key});

  @override
  State<localizationSystem> createState() => _localizationSystemState();
}

class _localizationSystemState extends State<localizationSystem> {
  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(
      actions: <Widget>[
        Padding(padding: const EdgeInsets.all(8),
        child: DropdownButton<Lang>(
          underline: const SizedBox(),
          icon: const Icon(Icons.translate_rounded,color: Colors.white,),
          onChanged: (Lang? lang) async{
            if(lang != null){
              Locale _locale = await setLocale(lang.languageCode);
              MainLanguage.setLocale(context,_locale);
            }
          },
          items: Lang.languageList().map<DropdownMenuItem<Lang>>(
            ((e) => DropdownMenuItem<Lang>(
              value: e,
              child:Row(
                children: <Widget>[
                  Text(e.name)
                ],
              ) 
              )
              )
          ).toList()
        ),
        )
      ],
    ),
    body: Center(
      child: Column(
        children: <Widget>[
          _iconLang(),
          Text(
            translation(context).language,
          )
        ],
      ),
    ),
  );
}

class _iconLang extends StatelessWidget {
  const _iconLang({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final iLang = L10n.getLang(locale.languageCode);
    return Center(
      child: Text(
        iLang,
      ),
    );
  }
}