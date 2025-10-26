import 'package:flutter/material.dart';

class AppLaguageProvider extends ChangeNotifier{
String appLanguage='en';

  void changeLanguage(String newLanguage){
    if( appLanguage==newLanguage){
      return;
    }
    appLanguage=newLanguage;
    notifyListeners();
  }
}