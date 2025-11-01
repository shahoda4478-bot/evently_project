import 'package:evently_project/common/app_assets.dart';
import 'package:evently_project/l10n/app_localizations.dart';
import 'package:evently_project/screens/tabs/profile/profile_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class HomeScreen extends StatelessWidget{
  static const String routName='home_screen';

  const HomeScreen({super.key});
  @override
Widget build(BuildContext context) {
  return Scaffold(
  bottomNavigationBar: BottomNavigationBar(
    items: [
      buildBottomNavigationBarItem(
        IconName: AppAssets.Home,
        label: AppLocalizations.of(context)!.home,
      ),
      buildBottomNavigationBarItem(
        IconName: AppAssets.Map,
        label: AppLocalizations.of(context)!.mab,
      ),
      buildBottomNavigationBarItem(
        IconName: AppAssets.Love,
        label: AppLocalizations.of(context)!.love,
      ),
      buildBottomNavigationBarItem(
        IconName: AppAssets.profile,
        label: AppLocalizations.of(context)!.profile,
      ),
    ],


    
  ),
  );

}
BottomNavigationBarItem buildBottomNavigationBarItem({
  required String IconName,
  required String label,
}){
  return BottomNavigationBarItem(
    label: label,
    icon: ImageIcon(AssetImage(IconName),
    ),
  );
}
}