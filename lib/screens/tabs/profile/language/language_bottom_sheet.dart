import 'package:evently_project/providers/app_laguage_provider.dart';
import 'package:flutter/material.dart';
import 'package:evently_project/l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
        var height = MediaQuery.of(context).size.height;
     var width = MediaQuery.of(context).size.width;
     n
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
              // Change Language to English
              languageProvider.changeLanguage('en');
            },
            child: languageProvider.appLanguage=='en'?
            getSelectedItemWidget(
              language: AppLocalizations.of(context)!.english):
              getUnSelectedItemWidget(
                language:AppLocalizations.of(context)!.english),
          ),
          SizedBox(
            height: height*0.02,
          ),
                  InkWell(
                    onTap: (){
                      // Change Language to Arabic
                      languageProvider.changeLanguage('ar');
                    },
                    child: languageProvider.appLanguage=='ar'?
                    getSelectedItemWidget(
                      language: AppLocalizations.of(context)!.arabic):
                    getUnSelectedItemWidget( 
                      language: AppLocalizations.of(context)!.arabic)
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