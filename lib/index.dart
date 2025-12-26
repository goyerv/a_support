// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:goyerv_support_web_app/guides/presentation/bloc/guides_bloc.dart';
import 'package:goyerv_support_web_app/guides/presentation/states/guides.dart';
import 'package:goyerv_support_web_app/web_core/internationalization/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:web/web.dart' as web;

import 'dependency_injections.dart';
import 'email_support/presentation/bloc/email_support_bloc.dart';
import 'email_support/presentation/states/email_support.dart';
import 'homepage/presentation/states/download.dart';
import 'homepage/presentation/states/homepage.dart';
import 'homepage/presentation/widgets/guides/analytics/analytics.dart';
import 'homepage/presentation/widgets/guides/convert/becoming_a_runner.dart';
import 'homepage/presentation/widgets/guides/convert/resigning.dart';
import 'homepage/presentation/widgets/guides/filter/filter.dart';
import 'homepage/presentation/widgets/guides/identity_verification/identity_verification.dart';
import 'homepage/presentation/widgets/guides/post/how_do_i_delete_a_post.dart';
import 'homepage/presentation/widgets/guides/post/how_do_i_schedule_a_post.dart';
import 'homepage/presentation/widgets/guides/post/posts.dart';
import 'homepage/presentation/widgets/guides/qr_scanner/how_do_i_scan_qr_code.dart';
import 'homepage/presentation/widgets/guides/requests/how_do_i_counter_a_request.dart';
import 'homepage/presentation/widgets/guides/requests/how_do_i_make_a_request.dart';
import 'homepage/presentation/widgets/guides/requests/terminating_requests.dart';
import 'homepage/presentation/widgets/guides/settings/delete_account.dart';
import 'homepage/presentation/widgets/guides/settings/delete_saved_bank_account.dart';
import 'homepage/presentation/widgets/guides/settings/delete_saved_card.dart';
import 'homepage/presentation/widgets/guides/settings/how_do_i_change_my_email_address.dart';
import 'homepage/presentation/widgets/guides/settings/how_do_i_change_my_name.dart';
import 'homepage/presentation/widgets/guides/settings/how_do_i_change_my_phone_number.dart';
import 'homepage/presentation/widgets/guides/settings/set_transaction_pin.dart';
import 'homepage/presentation/widgets/guides/settings/toggle_web_indexing.dart';
import 'homepage/presentation/widgets/guides/settings/two_factor_authentication.dart';
import 'homepage/presentation/widgets/guides/wallet/how_do_i_make_deposits.dart';
import 'homepage/presentation/widgets/guides/wallet/how_do_i_make_withdrawals.dart';
import 'homepage/presentation/widgets/guides/wallet/locks.dart';
import 'homepage/presentation/widgets/guides/wallet/transfer.dart';
import 'homepage/presentation/widgets/guides/wallet/wallet_balance.dart';
import 'web_core/internationalization/locales_preferences.dart';
import 'web_core/themes/dark/theme_dark.dart';
import 'web_core/themes/light/theme_light.dart';

class GoyervSupport extends StatefulWidget {


  const GoyervSupport({Key? key}) : super(key: key);

  @override
  State<GoyervSupport> createState() => _GoyervSupportState();

}

class _GoyervSupportState extends State<GoyervSupport> {

  late LocalesPreferencesImpl localesPreferences;

  late String locale;
  late final GoRouter router;
  late GlobalKey<NavigatorState> navigatorKey;
  late String languageCode;
  late String? countryCode;
  Locale? _locale;


  @override 
  void initState() {
    languageCode = '';
    countryCode = '';
    localesPreferences = LocalesPreferencesImpl();

    navigatorKey = GlobalKey<NavigatorState>();
    r();
    super.initState();
  }


  void r() async {
    final localeData = await localesPreferences.getPlatformLocale();

    setState(() {
      locale = localeData.first.isNotEmpty ? localeData.first : 'en';
      languageCode = localeData.first.isNotEmpty ? localeData.first : 'en';
      countryCode = (localeData.length > 1 && localeData[1].isNotEmpty) ? localeData[1] : 'US';
      _locale = Locale(languageCode, countryCode);
    });

  }


  void updateLocale(Locale newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }

 



  void handleLocaleChange(String? languageCode_) {
    if (languageCode_ == null) return;
    
    final localeMap = {
      'en': ['en', 'US'],
      'es': ['es', 'ES'],
      'fr': ['fr', 'FR'],
      'hi': ['hi', ''], 
      'ja': ['ja', 'JP'],
      'zh-CN': ['zh', 'CN'],
      'zh-TW': ['zh', 'TW'],
    };
    
    if (localeMap.containsKey(languageCode_)) {
      final locale = localeMap[languageCode_]!;
      localesPreferences.setPlatformLocale(locale);
      
      if (languageCode_ != languageCode) {
        web.window.location.reload();
      }
    }
  }




  @override
  Widget build(BuildContext context) {

    GoRouter router = GoRouter(
      initialLocation: '/',
      navigatorKey: navigatorKey,
      routes: [

        GoRoute(
          path: '/',
          builder: (context, state) {
            // handleLocaleChange('en'); 
            return Homepage(updateLocale, _locale!.languageCode);
          },
        ),
        

        // A. ROOT ROUTE - Handles the path segment for the locale (e.g., /ja)
        // This is the parent for ALL multilingual content.

        GoRoute(
          path: '/:languageCode', 
          
          builder: (context, state) {
            final languageCode = state.pathParameters['languageCode'];
            
            if (languageCode == 'download') {
              return Download(updateLocale);
            
            } else 

            // Until you add a new en locale to google, don't display the en in the url for now
            // so it does not conflict.
            if (languageCode == 'en') {
              return Homepage(updateLocale, _locale!.languageCode);
            }
            
            // 2. Handle the locale change
            handleLocaleChange(languageCode);
            
            return Homepage(updateLocale, _locale!.languageCode);

          },
          
          // NEST ALL GUIDES AND CONTENT ROUTES. 
          // Their paths are relative to '/:languageCode'
          routes: [
            
            // Guides Parent Route (for paths that have a section name after the locale)
            GoRoute(
              path: 'guides',
              builder: (context, state) => Homepage(updateLocale, _locale!.languageCode), // Landing page for /ja/guides
              routes: [

                GoRoute(
                  path: 'analytics/analytics',
                  builder: (context, state) => Analytics(updateLocale, _locale!.languageCode),
                ),

                GoRoute(
                  path: 'convert',
                  builder: (context, state) => Homepage(updateLocale, _locale!.languageCode),
                  routes: [
        
                    GoRoute(
                      path: 'becoming-a-runner',
                      builder: (context, state) => BecomingARunner(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'how-do-I-stop-becoming-a-runner',
                      builder: (context, state) => Resigning(updateLocale, _locale!.languageCode),
                    ),
        
                  ]
                ),


                GoRoute(
                  path: 'filters',
                  builder: (context, state) => Homepage(updateLocale, _locale!.languageCode),
                  routes: [

                    GoRoute(
                      path: 'filter',
                      builder: (context, state) => Filters(updateLocale, _locale!.languageCode),
                    ),

                  ]
                ),
        
                GoRoute(
                  path: 'identity-verification',
                  builder: (context, state) => Homepage(updateLocale, _locale!.languageCode),
                  routes: [

                    GoRoute(
                      path: 'how-do-I-verify-my-identity',
                      builder: (context, state) => HowDoIVerifyMyIdentity(updateLocale, _locale!.languageCode),
                    ),

                  ]
                ),


                GoRoute(
                  path: 'post',
                  builder: (context, state) => Homepage(updateLocale, _locale!.languageCode),
                  routes: [
        
                    GoRoute(
                      path: 'how-do-I-delete-a-post',
                      builder: (context, state) => HowDoIDeleteAPost(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'how-do-I-schedule-a-post',
                      builder: (context, state) => HowDoIScheduleAPost(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'how-do-I-make-a-post',
                      builder: (context, state) => HowDoIMakeAPost(updateLocale, _locale!.languageCode),
                    ),
        
                  ]
                ),
        
        
                GoRoute(
                  path: 'qr-scanner',
                  builder: (context, state) => Homepage(updateLocale, _locale!.languageCode),
                  routes: [

                    GoRoute(
                      path: 'how-do-I-scan-qr-codes',
                      builder: (context, state) => Filters(updateLocale, _locale!.languageCode),
                    ),

                  ]
                ),


                GoRoute(
                  path: 'requests',
                  builder: (context, state) => Homepage(updateLocale, _locale!.languageCode),
                  routes: [
        
                    GoRoute(
                      path: 'how-do-I-counter-a-request',
                      builder: (context, state) => HowDoICounterARequest(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'how-do-I-make-a-request',
                      builder: (context, state) => HowDoIMakeARequest(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'terminating-a-request',
                      builder: (context, state) => TerminatingRequests(updateLocale, _locale!.languageCode),
                    ),
        
                  ]
                ),



                GoRoute(
                  path: 'settings',
                  builder: (context, state) => Homepage(updateLocale, _locale!.languageCode),
                  routes: [
        
                    GoRoute(
                      path: 'how-do-I-delete-my-account',
                      builder: (context, state) => HowDoIDeleteMyAccount(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'how-do-I-delete-a-saved-bank-account',
                      builder: (context, state) => HowDoIDeleteSavedBankAccount(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'how-do-I-delete-a-saved-card',
                      builder: (context, state) => HowDoIDeleteSavedCard(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'how-do-I-change-my-email-address',
                      builder: (context, state) => HowDoIChangeMyEmailAddress(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'how-do-I-change-my-name',
                      builder: (context, state) => HowDoIChangeMyName(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'how-do-I-change-my-phone-number',
                      builder: (context, state) => HowDoIChangeMyPhoneNumber(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'set-transaction-pin',
                      builder: (context, state) => SetTransactionPin(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'web-indexing',
                      builder: (context, state) => ToggleWebIndexing(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'two-factor-authentication',
                      builder: (context, state) => TwoFactorAuthentication(updateLocale, _locale!.languageCode),
                    ),
        
                  ]
                ),
        
        
        
                GoRoute(
                  path: 'wallet',
                  builder: (context, state) => Homepage(updateLocale, _locale!.languageCode),
                  routes: [
        
                    GoRoute(
                      path: 'how-do-I-make-deposits-into-my-account',
                      builder: (context, state) => HowDoIMakeDeposits(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'how-do-I-make-withdrawals-from-my-account',
                      builder: (context, state) => HowDoIMakeWithdrawals(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'what-do-the-locks-on-my-account-mean',
                      builder: (context, state) => WhatDoLocksMean(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'how-do-I-make-transfers-on-goyerv',
                      builder: (context, state) => HowDoIMakeTransfers(updateLocale, _locale!.languageCode),
                    ),
        
                    GoRoute(
                      path: 'wallet-balance',
                      builder: (context, state) => WalletBalance(updateLocale, _locale!.languageCode),
                    ),
        
                  ]
                ),

              ]
            ),


            // Other top-level, locale-aware routes (Example: /ja/email-support)
            GoRoute(
              path: '/email-support',
              builder: (context, state) => EmailSupport(updateLocale),
            ),
        
               
        
            // Search/Query Route (Example: /ja/guides/analytics)
            // This guy can no longer be /guides/:query else go router will just match up 
            // until /guides/ and everything else will go as parameter. 
            // better you separate it
            GoRoute(
              path: '/q/:query',
              builder: (context, state) => Guides(updateLocale, state.pathParameters['query']),
            ),


    
          ],
        ),
        




      ],
    );












    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ((context) => sl<GuidesBloc>()),
        ),
        BlocProvider(
          create: ((context) => sl<EmailSupportBloc>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        locale: _locale,
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('zh', 'CN'),
          Locale('zh', 'TW'),
          Locale('en', 'AU'),
          Locale('en', 'BZ'),
          Locale('en', 'CA'),
          Locale('en', 'CB'),
          Locale('en', 'GB'),
          Locale('en', 'IN'),
          Locale('en', 'IE'),
          Locale('en', 'JM'),
          Locale('en', 'NZ'),
          Locale('en', 'PH'),
          Locale('en', 'ZA'),
          Locale('en', 'TT'),
          Locale('fr', 'BE'),
          Locale('fr', 'FR'),
          Locale('fr', 'LU'),
          Locale('fr', 'CH'),
          Locale('hi', ''),
          Locale('ja', ''),
          Locale('es', 'AR'),
          Locale('es', 'BO'),
          Locale('es', 'CI'),
          Locale('es', 'CO'),
          Locale('es', 'CR'),
          Locale('es', 'DO'),
          Locale('es', 'EC'),
          Locale('es', 'SV'),
          Locale('es', 'GT'),
          Locale('es', 'HN'),
          Locale('es', 'MX'),
          Locale('es', 'NI'),
          Locale('es', 'PA'),
          Locale('es', 'PY'),
          Locale('es', 'PE'),
          Locale('es', 'PR'),
          Locale('es', 'ES'),
          Locale('es', 'UY'),
          Locale('es', 'VE'),
        ],
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale!.languageCode && supportedLocale.countryCode == locale.countryCode)  {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
      ),
    );
  }

}
