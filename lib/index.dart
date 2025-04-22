// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goyerv_support_web_app/web_core/internationalization/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'homepage/presentation/states/homepage.dart';
import 'homepage/presentation/widgets/2025/analytics/analytics.dart';
import 'homepage/presentation/widgets/2025/convert/becoming_a_runner.dart';
import 'homepage/presentation/widgets/2025/convert/resigning.dart';
import 'homepage/presentation/widgets/2025/filter/filter.dart';
import 'homepage/presentation/widgets/2025/identity_verification/identity_verification.dart';
import 'homepage/presentation/widgets/2025/post/how_do_i_delete_a_post.dart';
import 'homepage/presentation/widgets/2025/post/how_do_i_schedule_a_post.dart';
import 'homepage/presentation/widgets/2025/post/posts.dart';
import 'homepage/presentation/widgets/2025/qr_scanner/how_do_i_scan_qr_code.dart';
import 'homepage/presentation/widgets/2025/requests/how_do_i_counter_a_request.dart';
import 'homepage/presentation/widgets/2025/requests/how_do_i_make_a_request.dart';
import 'homepage/presentation/widgets/2025/requests/terminating_requests.dart';
import 'homepage/presentation/widgets/2025/settings/delete_account.dart';
import 'homepage/presentation/widgets/2025/settings/delete_saved_bank_account.dart';
import 'homepage/presentation/widgets/2025/settings/delete_saved_card.dart';
import 'homepage/presentation/widgets/2025/settings/how_do_i_change_my_email_address.dart';
import 'homepage/presentation/widgets/2025/settings/how_do_i_change_my_name.dart';
import 'homepage/presentation/widgets/2025/settings/how_do_i_change_my_phone_number.dart';
import 'homepage/presentation/widgets/2025/settings/set_transaction_pin.dart';
import 'homepage/presentation/widgets/2025/settings/toggle_web_indexing.dart';
import 'homepage/presentation/widgets/2025/settings/two_factor_authentication.dart';
import 'homepage/presentation/widgets/2025/wallet/how_do_i_make_deposits.dart';
import 'homepage/presentation/widgets/2025/wallet/how_do_i_make_withdrawals.dart';
import 'homepage/presentation/widgets/2025/wallet/locks.dart';
import 'homepage/presentation/widgets/2025/wallet/transfer.dart';
import 'homepage/presentation/widgets/2025/wallet/wallet_balance.dart';
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


  @override 
  void initState() {
    localesPreferences = LocalesPreferencesImpl();
    super.initState();
  }


  void initializeRouter() {
    router = GoRouter(
      initialLocation: '/',
      navigatorKey: navigatorKey,
      redirect: (context, state) {
        final path = state.uri.path;

        if (path.endsWith('.html')) {
          final newPath = path.replaceAll('.html', '');
          return newPath;
        }

        return null;
      },
      routes: [
    
        GoRoute(
          path: '/',
          builder: (context, state) => Homepage()
        ),
  
   
        // Deep links
        GoRoute(
          path: '/2025/analytics/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "analytics") {
              return const Analytics();
            }

            return const Homepage();
          }
        ),
        
        GoRoute(
          path: '/2025/convert/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "becoming-a-runner") {
              return const BecomingARunner();
            
            } else 
            if (state.pathParameters['path'] == "how-do-I-stop-becoming-a-runner") {
              return const Resigning();
              
            }

            return const Homepage();
          }
        ),
        
        GoRoute(
          path: '/2025/filter/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "filters") {
              return const Filters();
            
            } 

            return const Homepage();
          }
        ),
        
        GoRoute(
          path: '/2025/identity-verification/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "how-do-I-verify-my-identity") {
              return const HowDoIVerifyMyIdentity();
            
            } 

            return const Homepage();
          }
        ),
        
        GoRoute(
          path: '/2025/post/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "how-do-I-delete-a-post") {
              return const HowDoIDeleteAPost();
            
            } else 
            if (state.pathParameters['path'] == "how-do-I-schedule-a-post") {
              return const HowDoIScheduleAPost();
              
            } else 
            if (state.pathParameters['path'] == "how-do-I-make-a-post") {
              return const HowDoIMakeAPost();
            
            }

            return const Homepage();
          }
        ),

    
        GoRoute(
          path: '/2025/qr/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "how-do-I-scan-qr-codes") {
              return const HowDoIScanAQRCode();
            
            } 

            return const Homepage();
          }
        ),



        GoRoute(
          path: '/2025/requests/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "how-do-I-counter-a-request") {
              return const HowDoICounterARequest();
            
            } else 
            if (state.pathParameters['path'] == "how-do-I-make-a-request") {
              return const HowDoIMakeARequest();
              
            } else 
            if (state.pathParameters['path'] == "terminating-a-request") {
              return const TerminatingRequests();
            
            }

            return const Homepage();
          }
        ),


        GoRoute(
          path: '/2025/settings/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "how-do-I-delete-my-account") {
              return const HowDoIDeleteMyAccount();
            
            } else 
            if (state.pathParameters['path'] == "how-do-I-delete-a-saved-bank-account") {
              return const HowDoIDeleteSavedBankAccount();
              
            } else 
            if (state.pathParameters['path'] == "how-do-I-delete-a-saved-card") {
              return const HowDoIDeleteSavedCard();
            
            } else
            if (state.pathParameters['path'] == "how-do-I-change-my-email-address") {
              return const HowDoIChangeMyEmailAddress();
            
            } else
            if (state.pathParameters['path'] == "how-do-I-change-my-name") {
              return const HowDoIChangeMyName();
            
            } else
            if (state.pathParameters['path'] == "how-do-I-change-my-phone-number") {
              return const HowDoIChangeMyPhoneNumber();
            
            } else
            if (state.pathParameters['path'] == "set-transaction-pin") {
              return const SetTransactionPin();
            
            } else
            if (state.pathParameters['path'] == "Web Indexing") {
              return const ToggleWebIndexing();
            
            } else
            if (state.pathParameters['path'] == "two-factor_authentication") {
              return const TwoFactorAuthentication();
            
            }

            return const Homepage();
          }
        ),



        GoRoute(
          path: '/2025/wallet/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "how-do-I-make-deposits-into-my-account") {
              return const HowDoIMakeDeposits();
            
            } else 
            if (state.pathParameters['path'] == "how-do-I-make-withdrawals-from-my-account") {
              return const HowDoIMakeWithdrawals();
              
            } else 
            if (state.pathParameters['path'] == "what-do-the-locks-on-my-account-mean") {
              return const WhatDoLocksMean();
            
            } else
            if (state.pathParameters['path'] == "how-do-I-make-transfers-on-goyerv") {
              return const HowDoIMakeTransfers();
            
            } else
            if (state.pathParameters['path'] == "wallet-balance") {
              return const WalletBalance();
            
            } 

            return const Homepage();
          }
        ),



      ]
    );
  
  }





  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      locale: Locale('${localesPreferences.getPlatformLocale().then((value) => value.first)}', '${localesPreferences.getPlatformLocale().then((value) => value.elementAt(1) == ''? null : value.elementAt(1))}'),
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
        Locale('hi', null),
        Locale('ja', null),
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
    );
  }

}
