import 'package:evently_project/providers/app_laguage_provider.dart';
import 'package:evently_project/providers/app_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:evently_project/l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:evently_project/providers/app_theme_provider.dart';

class themeBottomSheet extends StatefulWidget {
  const themeBottomSheet({super.key});

  @override
  State<themeBottomSheet> createState() => _themeBottomSheetState();
}

class _themeBottomSheetState extends State<themeBottomSheet> {
 

  @override
  Widget build(BuildContext context) {
        var height = MediaQuery.of(context).size.height;
     var width = MediaQuery.of(context).size.width;
      var ThemeProvider=Provider.of<AppThemeProvider>(context);
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: width*0.04,
        vertical: height*0.02,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: (){
              // Change theme to dark
              ThemeProvider.changeTheme(ThemeMode.dark);
            },
            child: ThemeProvider.isDarkMode()?
            getSelectedItemWidget(
              language: AppLocalizations.of(context)!.dark):
              getUnSelectedItemWidget(
                language:AppLocalizations.of(context)!.dark),
          ),
          SizedBox(
            height: height*0.02,
          ),
                  InkWell(
                    onTap: (){
                      // Change theme to light
                      ThemeProvider.changeTheme(ThemeMode.light);
                    },
                    child:! (ThemeProvider.isDarkMode())?
                    getSelectedItemWidget(
                      language: AppLocalizations.of(context)!.light):
                    getUnSelectedItemWidget( 
                      language: AppLocalizations.of(context)!.light)
                  ),
        ],
      ),
    );
  }

    Widget getSelectedItemWidget({required String language}) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            language,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Icon(
            Icons.check,
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      );
    }
    Widget getUnSelectedItemWidget({required String language}) {
      return Text(
        language,
        style: Theme.of(context).textTheme.headlineLarge,
      );
  }
  }