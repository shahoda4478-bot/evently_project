import 'package:evently_project/common/app_assets.dart';
import 'package:evently_project/common/app_colors.dart';
import 'package:evently_project/providers/app_laguage_provider.dart';
import 'package:evently_project/providers/app_theme_provider.dart';
import 'package:evently_project/screens/tabs/profile/language/language_bottom_sheet.dart';
import 'package:evently_project/screens/tabs/profile/theme/theme_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:evently_project/l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
     var width = MediaQuery.of(context).size.width;
     var languageProvider=Provider.of<AppLaguageProvider>(context);
     var themeProvider=Provider.of<AppThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryLight,
        toolbarHeight: height*0.20,
        title: Row(
          children: [
          Image.asset(AppAssets.routBg),
                      SizedBox(
              width: width*0.04,
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text('rout Academy',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Colors.white,
              ),
              ),
                            Text('rout@gmail.com',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Colors.white,
              ),
              ),
            ]

            
          )
          ],
        )
      ),
body: Padding(
  padding:  EdgeInsets.symmetric(
    horizontal: width*0.04,
    vertical: height*0.02,
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          InkWell(
            onTap: (){
              showLanguageBottomsheet(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: height*0.02,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: width*0.04,
                vertical: height*0.01,
              ),
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppColors.primaryLight,
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    languageProvider.appLanguage=='en'?
                    AppLocalizations.of(context)!.english:
                    AppLocalizations.of(context)!.arabic,
                  style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Icon( Icons.arrow_drop_down_circle_outlined,
                  color: AppColors.primaryLight,
                  size: 35,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height*0.02,
          ),
           Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          InkWell(
            onTap: (){
              showthemeBottomsheet(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: height*0.02,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: width*0.04,
                vertical: height*0.01,
              ),
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppColors.primaryLight,
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
Text(
  themeProvider.isDarkMode()
      ? AppLocalizations.of(context)!.dark
      : AppLocalizations.of(context)!.light,
  style: Theme.of(context).textTheme.headlineLarge,
),

                  Icon( Icons.arrow_drop_down_circle_outlined,
                  color: AppColors.primaryLight,
                  size: 35,
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: (){
              // Logout Functionality
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.redColor,
              minimumSize: Size(
                double.infinity,
                height*0.07,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: width*0.04,
                vertical: height*0.02,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                SizedBox(
                  width: width*0.02,
                ),
                Text(AppLocalizations.of(context)!.logout,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
    ],
  ),
),
    );
  }
  
  void showLanguageBottomsheet(BuildContext context,){ 
    showModalBottomSheet(
      context: context,
     builder: (context)=>const LanguageBottomSheet(),
     );
  }
  
  void showthemeBottomsheet(BuildContext context) {
        showModalBottomSheet(
      context: context,
     builder: (context)=>const themeBottomSheet(),
     );
  }
}