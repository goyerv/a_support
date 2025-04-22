// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:footer/footer_view.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';


import '../../../dependency_injections.dart';
import '../../../email_support/presentation/states/email_support.dart';
import '../../../guides/presentation/bloc/guides_bloc.dart';
import '../../../guides/presentation/states/guides.dart';
import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../../../web_core/util/hover.dart';
import '../../../widget/widget.dart';
import '../widgets/2025/analytics/analytics.dart';
import '../widgets/2025/convert/becoming_a_runner.dart';
import '../widgets/2025/convert/resigning.dart';
import '../widgets/2025/filter/filter.dart';
import '../widgets/2025/identity_verification/identity_verification.dart';
import '../widgets/2025/post/how_do_i_delete_a_post.dart';
import '../widgets/2025/post/how_do_i_schedule_a_post.dart';
import '../widgets/2025/post/posts.dart';
import '../widgets/2025/qr_scanner/how_do_i_scan_qr_code.dart';
import '../widgets/2025/requests/how_do_i_counter_a_request.dart';
import '../widgets/2025/requests/how_do_i_make_a_request.dart';
import '../widgets/2025/requests/terminating_requests.dart';
import '../widgets/2025/settings/delete_account.dart';
import '../widgets/2025/settings/delete_saved_bank_account.dart';
import '../widgets/2025/settings/delete_saved_card.dart';
import '../widgets/2025/settings/how_do_i_change_my_email_address.dart';
import '../widgets/2025/settings/how_do_i_change_my_name.dart';
import '../widgets/2025/settings/how_do_i_change_my_phone_number.dart';
import '../widgets/2025/settings/set_transaction_pin.dart';
import '../widgets/2025/settings/toggle_web_indexing.dart';
import '../widgets/2025/settings/two_factor_authentication.dart';
import '../widgets/2025/wallet/how_do_i_make_deposits.dart';
import '../widgets/2025/wallet/how_do_i_make_withdrawals.dart';
import '../widgets/2025/wallet/locks.dart';
import '../widgets/2025/wallet/transfer.dart';
import '../widgets/2025/wallet/wallet_balance.dart';
import 'download.dart';


class Homepage extends StatefulWidget {
  
  const Homepage({Key? key}) : super(key: key);

  @override 
  State<Homepage> createState() => _HomepageState();

}

class _HomepageState extends State<Homepage> {



  late TextEditingController _textFieldController;
  late FocusNode _textFieldFocusNode;
  late FocusNode _buttonFocusNode;


  late List<String> articles;
  List<String> suggestions = [];
  late List<Widget> pages;


  bool gettingSuggestions = false;

  String? query;




  @override
  void initState() {
    _textFieldController = TextEditingController();

    _textFieldFocusNode = FocusNode();
    _buttonFocusNode = FocusNode();


    articles = [AppLocalizations.of(context).translate('Analytics'), AppLocalizations.of(context).translate('Becoming a runner'), AppLocalizations.of(context).translate('How do I stop becoming a runner?'), AppLocalizations.of(context).translate('Filters'), AppLocalizations.of(context).translate('How do I verify my identity?'), AppLocalizations.of(context).translate('How do I delete my post?'), AppLocalizations.of(context).translate('How do I schedule a post?'), AppLocalizations.of(context).translate('How do I create a post?'), AppLocalizations.of(context).translate('How do I scan qr-codes?'), AppLocalizations.of(context).translate('How do I counter a request?'), AppLocalizations.of(context).translate('How do I make a request?'), AppLocalizations.of(context).translate('Terminating request'), AppLocalizations.of(context).translate('How do I delete my account?'), AppLocalizations.of(context).translate('How do I delete a saved bank account?'), AppLocalizations.of(context).translate('How do I delete a saved card?'), AppLocalizations.of(context).translate('How do I change my email address?'), AppLocalizations.of(context).translate('How do I change my name?'), AppLocalizations.of(context).translate('How do I change my phone number?'), AppLocalizations.of(context).translate('Set transaction pin'), AppLocalizations.of(context).translate('Web indexing'), AppLocalizations.of(context).translate('Two-factor authentication'), AppLocalizations.of(context).translate('How do I make deposits into my account?'), AppLocalizations.of(context).translate('How do I make withdrawals from my account?'), AppLocalizations.of(context).translate('What do the locks on my account mean?'), AppLocalizations.of(context).translate('How do I make transfers?'), AppLocalizations.of(context).translate('Wallet balance'), ];


    pages = [Analytics(), BecomingARunner(), Resigning(), Filters(), HowDoIVerifyMyIdentity(), HowDoIDeleteAPost(), HowDoIScheduleAPost(), HowDoIMakeAPost(), HowDoIScanAQRCode(),HowDoICounterARequest(), HowDoIMakeARequest(), TerminatingRequests(), HowDoIDeleteMyAccount(), HowDoIDeleteSavedBankAccount(), HowDoIDeleteSavedCard(), HowDoIChangeMyEmailAddress(), HowDoIChangeMyName(), HowDoIChangeMyPhoneNumber(), SetTransactionPin(), ToggleWebIndexing(), TwoFactorAuthentication(), HowDoIMakeDeposits(), HowDoIMakeWithdrawals(), WhatDoLocksMean(), HowDoIMakeTransfers(), WalletBalance()];

    super.initState();

  }




  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: AppLocalizations.of(context).translate('Goyerv - Support'),
        color: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: FooterView(
            footer: footer(context),
            children: [


              BlocProvider(
                create: ((context) => sl<GuidesBloc>()),
                child: BlocConsumer(
                  listener: ((context, state) {}),
                  builder: ((context, state) {
                    if (state is GuidesInitial) {
                      return boilerPlate(context);
                                  
                    } else 
                    if (state is GuidesLoading) {
                      WidgetsBinding.instance.addPostFrameCallback((_) { if (mounted) { setState(() {gettingSuggestions = true;}); }}); 
                    
                    } else
                    if (state is GuidesLoaded) {
                      if (state.guidesEntity.searchSuggestions != null) {
                        WidgetsBinding.instance.addPostFrameCallback((_) { if (mounted) { 
                          setState(() {
                            suggestions.addAll(state.guidesEntity.searchSuggestions!);
                            suggestions.addAll(articles.where((item) => RegExp(query!).hasMatch(item)).toList());
                            gettingSuggestions = false;
                          }); 
                        }}); 
                        
                      } 
                    
                    } return boilerPlate(context);
                  }),
                )
              ),



            ]
          ),
        ),
      ),
    );
  }



  Widget boilerPlate(BuildContext context) {
    return Column(
      children: [

        SvgPicture.asset('images/coffee.svg', colorFilter: ColorFilter.mode(Theme.of(context).brightness == Brightness.dark? white : black, BlendMode.srcIn)),

        sbhmin,

        Text(AppLocalizations.of(context).translate('Goyerv Support'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold)),

        Text(AppLocalizations.of(context).translate('Find answers, explore topics, and connect with the Goyerv team.'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.w400)),


        sbhavg,


        Text(AppLocalizations.of(context).translate('Top Articles'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),

        sbhmin,
        
        OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIMakeAPost())), child: Text(AppLocalizations.of(context).translate("How do I create a post?\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: isHovered? blue : Theme.of(context).textTheme.titleLarge!.color, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

        OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIScanAQRCode())), child: Text(AppLocalizations.of(context).translate("How do I scan QR-Codes?\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: isHovered? blue : Theme.of(context).textTheme.titleLarge!.color, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

        OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIMakeARequest())), child: Text(AppLocalizations.of(context).translate("How do I make a request?\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: isHovered? blue : Theme.of(context).textTheme.titleLarge!.color, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

        OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIMakeWithdrawals())), child: Text(AppLocalizations.of(context).translate("How do I make withdrawals?\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: isHovered? blue : Theme.of(context).textTheme.titleLarge!.color, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

        OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const SetTransactionPin())), child: Text(AppLocalizations.of(context).translate("Set transaction pin\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: isHovered? blue : Theme.of(context).textTheme.titleLarge!.color, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),


        sbhavg,

        Text(AppLocalizations.of(context).translate('Search'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Autocomplete<String>(
            fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) => SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                controller: _textFieldController,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  hintText: AppLocalizations.of(context).translate('Search'),
                  suffixIcon: IconButton(onPressed: () => BlocProvider.of<GuidesBloc>(context).add(SupportSearchEvent(query)), icon: searchIcon, hoverColor: Theme.of(context).primaryColor, focusNode: _buttonFocusNode)
                ),
                cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
                textInputAction: TextInputAction.done,
                validator: (value) {return null;},
                onFieldSubmitted: (String value) { FocusScope.of(context).requestFocus(_buttonFocusNode); },
                onChanged: (value) {query = value.trim();},
                focusNode: _textFieldFocusNode,
              ),
            ),
            optionsBuilder: (textEditingValue) {
                
              if (suggestions.isNotEmpty) {
                return suggestions;
              }
          
              return const Iterable.empty();
              
            },
            optionsViewBuilder: (context, onSelected, options) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: gettingSuggestions? loadingIndicator(context, false) : ListView.builder(
                    shrinkWrap: true,
                    itemCount: options.length,
                    itemBuilder: (context, index) {
                      final option = options.elementAt(index);
                      return Material(
                        type: MaterialType.transparency,
                        child: ListTile(
                          onTap: () {
                            onSelected(option);  
                            for (int i = 0; i < articles.length; i++) {
                              if (option == articles[i]) {
                                Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => pages[i]));
                              }
                            
                            }

                            Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => Guides(option)));
                              
                          },
                          title: Text(option, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          
            displayStringForOption: (result) => result,
          ),
        ),



        sbhavg,


        Text(AppLocalizations.of(context).translate('Stay Updated'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),

        sbhmin,

        Text(AppLocalizations.of(context).translate('Get the latest releases of the Goyerv app for all of your devices on all platforms.\n\n'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge),

        Center(
          child: OutlinedButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Download())),
            style: OutlinedButton.styleFrom(
              shape: StadiumBorder(),
              backgroundColor: blue,
              foregroundColor: white,
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            ),
            child: Text(AppLocalizations.of(context).translate("Download"), style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: white),),
          ),
        ),


        sbhavg,



        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  
            Icon(Icons.headphones_outlined, size: 50.0,  color: Colors.orange),

            sbhmin,
            
            TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const EmailSupport())), child: Text(AppLocalizations.of(context).translate('Contact support'), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: blue)),)
                  
          ],
        ),


        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  
            Icon(Icons.people_outline_rounded, size: 50.0,  color: Colors.teal),

            sbhmin,
            
            TextButton(onPressed: () => launchUrl(Uri.parse('https://community.goyerv.com')), child: Text(AppLocalizations.of(context).translate('Join the community'), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: blue)),)
                  
          ],
        ),








      ],
    );
  }




  Widget loadingIndicator(BuildContext context, bool recent) {
    return ListView.builder(
      itemCount: recent? 10 : 4,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: double.infinity,
            height: 10.0,
            color: white,
          ),
        );
      }
    );
  }
  
}