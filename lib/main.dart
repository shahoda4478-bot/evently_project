import 'package:evently_project/common/app_routs.dart';
import 'package:evently_project/providers/app_laguage_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/HomeScreen.dart';
import 'common/app_theme.dart';
import 'l10n/app_localizations.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations', // <-- change the path of the translation files 
      fallbackLocale: Locale('en'),
      child: ChangeNotifierProvider<AppLaguageProvider>(
        create: (context) => AppLaguageProvider(),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var LanguageProvider = Provider.of<AppLaguageProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      initialRoute: AppRouts.homeRouteName,
      routes: {
        
      AppRouts.homeRouteName: (context) => HomeScreen(),
      },
      locale: Locale(LanguageProvider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      //locale: context.locale,
      
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
    
    );
  }
}

