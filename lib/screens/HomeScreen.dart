import 'package:evently_project/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class HomeScreen extends StatelessWidget{
  static const String routName='home_screen';

  const HomeScreen({super.key});
  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text(AppLocalizations.of(context)!.language),
    ),
  );

}
}