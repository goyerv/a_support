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

 




  @override
  Widget build(BuildContext context) {

    GoRouter router = GoRouter(
      initialLocation: '/',
      navigatorKey: navigatorKey,
      routes: [
    
        GoRoute(
          path: '/',
          builder: (context, state) {
            return Homepage(updateLocale);
          }
        ),
  
        GoRoute(
          path: ':languageCode',
          builder: (context, state) {
            if(state.pathParameters[':languageCode'] == "en") {
              return Homepage(updateLocale);
            
            } else 
            if(state.pathParameters[':languageCode'] == "es") {
              localesPreferences
                          .setPlatformLocale(['es', 'ES']);
                if (languageCode != "es")  web.window.location.reload();
              return Homepage(updateLocale);
            
            } else 
            if(state.pathParameters[':languageCode'] == "fr") {
              localesPreferences
                          .setPlatformLocale(['fr', 'FR']);
                if (languageCode != "fr")  web.window.location.reload();
              return Homepage(updateLocale);
            
            } else 
            if(state.pathParameters[':languageCode'] == "hi") {
              localesPreferences
                          .setPlatformLocale(['hi', '']);
                if (languageCode != "hi")  web.window.location.reload();
              return Homepage(updateLocale);
            
            } else 
            if(state.pathParameters[':languageCode'] == "ja") {
              localesPreferences
                          .setPlatformLocale(['es', 'ES']);
                if (languageCode != "ja")  web.window.location.reload();
              return Homepage(updateLocale);
            
            } else 
            if(state.pathParameters[':languageCode'] == "zh-CN") {
              localesPreferences
                          .setPlatformLocale(['es', 'ES']);
                if (languageCode != "zh-CN")  web.window.location.reload();
              return Homepage(updateLocale);
            
            } else 
            if(state.pathParameters[':languageCode'] == "zh-TW") {
              localesPreferences
                          .setPlatformLocale(['es', 'ES']);
                if (languageCode != "zh-TW")  web.window.location.reload();
              return Homepage(updateLocale);
            
            } 
            return Homepage(updateLocale);
          }
        ),
  


        // Normal Links 
        GoRoute(
          path: '/guides/analytics/analytics',
          builder: (context, state) => Analytics(updateLocale),
        ),
  
        GoRoute(
          path: '/guides/convert',
          builder: (context, state) => Homepage(updateLocale),
          routes: [

            GoRoute(
              path: 'becoming-a-runner',
              builder: (context, state) => BecomingARunner(updateLocale),
            ),

            GoRoute(
              path: 'how-do-I-stop-becoming-a-runner',
              builder: (context, state) => Resigning(updateLocale),
            ),

          ]
        ),

        GoRoute(
          path: '/guides/filter/filters',
          builder: (context, state) => Filters(updateLocale),
        ),

        GoRoute(
          path: '/guides/identity-verification/how-do-I-verify-my-identity',
          builder: (context, state) => HowDoIVerifyMyIdentity(updateLocale),
        ),

        GoRoute(
          path: '/guides/post',
          builder: (context, state) => Homepage(updateLocale),
          routes: [

            GoRoute(
              path: 'how-do-I-delete-a-post',
              builder: (context, state) => HowDoIDeleteAPost(updateLocale),
            ),

            GoRoute(
              path: 'how-do-I-schedule-a-post',
              builder: (context, state) => HowDoIScheduleAPost(updateLocale),
            ),

            GoRoute(
              path: 'how-do-I-make-a-post',
              builder: (context, state) => HowDoIMakeAPost(updateLocale),
            ),

          ]
        ),


        GoRoute(
          path: '/guides/qr/how-do-I-scan-qr-codes',
          builder: (context, state) => HowDoIScanAQRCode(updateLocale),
        ),


        GoRoute(
          path: '/guides/requests',
          builder: (context, state) => Homepage(updateLocale),
          routes: [

            GoRoute(
              path: 'how-do-I-counter-a-request',
              builder: (context, state) => HowDoICounterARequest(updateLocale),
            ),

            GoRoute(
              path: 'how-do-I-make-a-request',
              builder: (context, state) => HowDoIMakeARequest(updateLocale),
            ),

            GoRoute(
              path: 'terminating-a-request',
              builder: (context, state) => TerminatingRequests(updateLocale),
            ),

          ]
        ),



        GoRoute(
          path: '/guides/settings',
          builder: (context, state) => Homepage(updateLocale),
          routes: [

            GoRoute(
              path: 'how-do-I-delete-my-account',
              builder: (context, state) => HowDoIDeleteMyAccount(updateLocale),
            ),

            GoRoute(
              path: 'how-do-I-delete-a-saved-bank-account',
              builder: (context, state) => HowDoIDeleteSavedBankAccount(updateLocale),
            ),

            GoRoute(
              path: 'how-do-I-delete-a-saved-card',
              builder: (context, state) => HowDoIDeleteSavedCard(updateLocale),
            ),

            GoRoute(
              path: 'how-do-I-change-my-email-address',
              builder: (context, state) => HowDoIChangeMyEmailAddress(updateLocale),
            ),

            GoRoute(
              path: 'how-do-I-change-my-name',
              builder: (context, state) => HowDoIChangeMyName(updateLocale),
            ),

            GoRoute(
              path: 'how-do-I-change-my-phone-number',
              builder: (context, state) => HowDoIChangeMyPhoneNumber(updateLocale),
            ),

            GoRoute(
              path: 'set-transaction-pin',
              builder: (context, state) => SetTransactionPin(updateLocale),
            ),

            GoRoute(
              path: 'web-indexing',
              builder: (context, state) => ToggleWebIndexing(updateLocale),
            ),

            GoRoute(
              path: 'two-factor-authentication',
              builder: (context, state) => TwoFactorAuthentication(updateLocale),
            ),

          ]
        ),



        GoRoute(
          path: '/guides/wallet',
          builder: (context, state) => Homepage(updateLocale),
          routes: [

            GoRoute(
              path: 'how-do-I-make-deposits-into-my-account',
              builder: (context, state) => HowDoIMakeDeposits(updateLocale),
            ),

            GoRoute(
              path: 'how-do-I-make-withdrawals-from-my-account',
              builder: (context, state) => HowDoIMakeWithdrawals(updateLocale),
            ),

            GoRoute(
              path: 'what-do-the-locks-on-my-account-mean',
              builder: (context, state) => WhatDoLocksMean(updateLocale),
            ),

            GoRoute(
              path: 'how-do-I-make-transfers-on-goyerv',
              builder: (context, state) => HowDoIMakeTransfers(updateLocale),
            ),

            GoRoute(
              path: 'wallet-balance',
              builder: (context, state) => WalletBalance(updateLocale),
            ),

          ]
        ),


        GoRoute(
          path: '/email-support',
          builder: (context, state) => EmailSupport(updateLocale),
        ),

        GoRoute(
          path: '/download',
          builder: (context, state) => Download(updateLocale),
        ),


        GoRoute(
          path: '/guides/:query',
          builder: (context, state) => Guides(updateLocale, state.pathParameters['query']),
        ),












        // Deep links
        GoRoute(
          path: ':languageCode/guides/analytics/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "analytics") {
              return Analytics(updateLocale);
            }

            return Homepage(updateLocale);
          }
        ),
        
        GoRoute(
          path: ':languageCode/guides/convert/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "becoming-a-runner") {
              return BecomingARunner(updateLocale);
            
            } else 
            if (state.pathParameters['path'] == "how-do-I-stop-becoming-a-runner") {
              return Resigning(updateLocale);
              
            }

            return Homepage(updateLocale);
          }
        ),
        
        GoRoute(
          path: ':languageCode/guides/filter/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "filters") {
              return Filters(updateLocale);
            
            } 

            return Homepage(updateLocale);
          }
        ),
        
        GoRoute(
          path: ':languageCode/guides/identity-verification/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "how-do-I-verify-my-identity") {
              return HowDoIVerifyMyIdentity(updateLocale);
            
            } 

            return Homepage(updateLocale);
          }
        ),
        
        GoRoute(
          path: ':languageCode/guides/post/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "how-do-I-delete-a-post") {
              return HowDoIDeleteAPost(updateLocale);
            
            } else 
            if (state.pathParameters['path'] == "how-do-I-schedule-a-post") {
              return HowDoIScheduleAPost(updateLocale);
              
            } else 
            if (state.pathParameters['path'] == "how-do-I-make-a-post") {
              return HowDoIMakeAPost(updateLocale);
            
            }

            return Homepage(updateLocale);
          }
        ),

    
        GoRoute(
          path: ':languageCode/guides/qr/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "how-do-I-scan-qr-codes") {
              return HowDoIScanAQRCode(updateLocale);
            
            } 

            return Homepage(updateLocale);
          }
        ),



        GoRoute(
          path: ':languageCode/guides/requests/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "how-do-I-counter-a-request") {
              return HowDoICounterARequest(updateLocale);
            
            } else 
            if (state.pathParameters['path'] == "how-do-I-make-a-request") {
              return HowDoIMakeARequest(updateLocale);
              
            } else 
            if (state.pathParameters['path'] == "terminating-a-request") {
              return TerminatingRequests(updateLocale);
            
            }

            return Homepage(updateLocale);
          }
        ),


        GoRoute(
          path: ':languageCode/guides/settings/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "how-do-I-delete-my-account") {
              return HowDoIDeleteMyAccount(updateLocale);
            
            } else 
            if (state.pathParameters['path'] == "how-do-I-delete-a-saved-bank-account") {
              return HowDoIDeleteSavedBankAccount(updateLocale);
              
            } else 
            if (state.pathParameters['path'] == "how-do-I-delete-a-saved-card") {
              return HowDoIDeleteSavedCard(updateLocale);
            
            } else
            if (state.pathParameters['path'] == "how-do-I-change-my-email-address") {
              return HowDoIChangeMyEmailAddress(updateLocale);
            
            } else
            if (state.pathParameters['path'] == "how-do-I-change-my-name") {
              return HowDoIChangeMyName(updateLocale);
            
            } else
            if (state.pathParameters['path'] == "how-do-I-change-my-phone-number") {
              return HowDoIChangeMyPhoneNumber(updateLocale);
            
            } else
            if (state.pathParameters['path'] == "set-transaction-pin") {
              return SetTransactionPin(updateLocale);
            
            } else
            if (state.pathParameters['path'] == "web-indexing") {
              return ToggleWebIndexing(updateLocale);
            
            } else
            if (state.pathParameters['path'] == "two-factor-authentication") {
              return TwoFactorAuthentication(updateLocale);
            
            }

            return Homepage(updateLocale);
          }
        ),



        GoRoute(
          path: ':languageCode/guides/wallet/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "how-do-I-make-deposits-into-my-account") {
              return HowDoIMakeDeposits(updateLocale);
            
            } else 
            if (state.pathParameters['path'] == "how-do-I-make-withdrawals-from-my-account") {
              return HowDoIMakeWithdrawals(updateLocale);
              
            } else 
            if (state.pathParameters['path'] == "what-do-the-locks-on-my-account-mean") {
              return WhatDoLocksMean(updateLocale);
            
            } else
            if (state.pathParameters['path'] == "how-do-I-make-transfers-on-goyerv") {
              return HowDoIMakeTransfers(updateLocale);
            
            } else
            if (state.pathParameters['path'] == "wallet-balance") {
              return WalletBalance(updateLocale);
            
            } 

            return Homepage(updateLocale);
          }
        ),



      ]
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
