// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:footer/footer_view.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';


import '../../../guides/presentation/bloc/guides_bloc.dart';
import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../../../web_core/util/hover.dart';
import '../../../widget/widget.dart';
import '../widgets/guides/analytics/analytics.dart';
import '../widgets/guides/convert/becoming_a_runner.dart';
import '../widgets/guides/convert/resigning.dart';
import '../widgets/guides/filter/filter.dart';
import '../widgets/guides/identity_verification/identity_verification.dart';
import '../widgets/guides/post/how_do_i_delete_a_post.dart';
import '../widgets/guides/post/how_do_i_schedule_a_post.dart';
import '../widgets/guides/post/posts.dart';
import '../widgets/guides/qr_scanner/how_do_i_scan_qr_code.dart';
import '../widgets/guides/requests/how_do_i_counter_a_request.dart';
import '../widgets/guides/requests/how_do_i_make_a_request.dart';
import '../widgets/guides/requests/terminating_requests.dart';
import '../widgets/guides/settings/delete_account.dart';
import '../widgets/guides/settings/delete_saved_bank_account.dart';
import '../widgets/guides/settings/delete_saved_card.dart';
import '../widgets/guides/settings/how_do_i_change_my_email_address.dart';
import '../widgets/guides/settings/how_do_i_change_my_name.dart';
import '../widgets/guides/settings/how_do_i_change_my_phone_number.dart';
import '../widgets/guides/settings/set_transaction_pin.dart';
import '../widgets/guides/settings/toggle_web_indexing.dart';
import '../widgets/guides/settings/two_factor_authentication.dart';
import '../widgets/guides/wallet/how_do_i_make_deposits.dart';
import '../widgets/guides/wallet/how_do_i_make_withdrawals.dart';
import '../widgets/guides/wallet/locks.dart';
import '../widgets/guides/wallet/transfer.dart';
import '../widgets/guides/wallet/wallet_balance.dart';


class Homepage extends StatefulWidget {

  final void Function(Locale) onLocaleChanged;
  
  const Homepage(this.onLocaleChanged, {Key? key}) : super(key: key);

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

    r();

    pages = [Analytics(widget.onLocaleChanged), BecomingARunner(widget.onLocaleChanged), Resigning(widget.onLocaleChanged), Filters(widget.onLocaleChanged), HowDoIVerifyMyIdentity(widget.onLocaleChanged), HowDoIDeleteAPost(widget.onLocaleChanged), HowDoIScheduleAPost(widget.onLocaleChanged), HowDoIMakeAPost(widget.onLocaleChanged), HowDoIScanAQRCode(widget.onLocaleChanged),HowDoICounterARequest(widget.onLocaleChanged), HowDoIMakeARequest(widget.onLocaleChanged), TerminatingRequests(widget.onLocaleChanged), HowDoIDeleteMyAccount(widget.onLocaleChanged), HowDoIDeleteSavedBankAccount(widget.onLocaleChanged), HowDoIDeleteSavedCard(widget.onLocaleChanged), HowDoIChangeMyEmailAddress(widget.onLocaleChanged), HowDoIChangeMyName(widget.onLocaleChanged), HowDoIChangeMyPhoneNumber(widget.onLocaleChanged), SetTransactionPin(widget.onLocaleChanged), ToggleWebIndexing(widget.onLocaleChanged), TwoFactorAuthentication(widget.onLocaleChanged), HowDoIMakeDeposits(widget.onLocaleChanged), HowDoIMakeWithdrawals(widget.onLocaleChanged), WhatDoLocksMean(widget.onLocaleChanged), HowDoIMakeTransfers(widget.onLocaleChanged), WalletBalance(widget.onLocaleChanged)];

    super.initState();

  }


  void r() async {
    articles = [AppLocalizations.of(context).translate('Analytics'), AppLocalizations.of(context).translate('Becoming a runner'), AppLocalizations.of(context).translate('How do I stop becoming a runner?'), AppLocalizations.of(context).translate('Filters'), AppLocalizations.of(context).translate('How do I verify my identity?'), AppLocalizations.of(context).translate('How do I delete my post?'), AppLocalizations.of(context).translate('How do I schedule a post?'), AppLocalizations.of(context).translate('How do I create a post?'), AppLocalizations.of(context).translate('How do I scan qr-codes?'), AppLocalizations.of(context).translate('How do I counter a request?'), AppLocalizations.of(context).translate('How do I make a request?'), AppLocalizations.of(context).translate('Terminating request'), AppLocalizations.of(context).translate('How do I delete my account?'), AppLocalizations.of(context).translate('How do I delete a saved bank account?'), AppLocalizations.of(context).translate('How do I delete a saved card?'), AppLocalizations.of(context).translate('How do I change my email address?'), AppLocalizations.of(context).translate('How do I change my name?'), AppLocalizations.of(context).translate('How do I change my phone number?'), AppLocalizations.of(context).translate('Set transaction pin'), AppLocalizations.of(context).translate('Web indexing'), AppLocalizations.of(context).translate('Two-factor authentication'), AppLocalizations.of(context).translate('How do I make deposits into my account?'), AppLocalizations.of(context).translate('How do I make withdrawals from my account?'), AppLocalizations.of(context).translate('What do the locks on my account mean?'), AppLocalizations.of(context).translate('How do I make transfers?'), AppLocalizations.of(context).translate('Wallet balance'), ];
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
            footer: footer(context, widget.onLocaleChanged),
            flex: 6,
            children: [

              BlocConsumer<GuidesBloc, GuidesState>(
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

        sbhavg,

        SvgPicture.asset(
          Theme.of(context).brightness == Brightness.dark? 'assets/images/coffee_dark.svg' : 'assets/images/coffee_light.svg',
          width: MediaQuery.of(context).size.width >= 800? null : MediaQuery.of(context).size.width * 0.25,
          height: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.height * 0.55 : MediaQuery.of(context).size.height * 0.4,
          allowDrawingOutsideViewBox: true,

        ),

        sbhmin,

        Text(AppLocalizations.of(context).translate('Goyerv Support'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold)),

        sbhmax,

        Text(AppLocalizations.of(context).translate('Find answers, explore topics, and connect with the Goyerv team.'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.w400)),

        sbhmax, sbhmax,

        Text(AppLocalizations.of(context).translate('Top Articles'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),

        sbhavg,
        
        OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/post/how-do-I-make-a-post'), child: Text(AppLocalizations.of(context).translate("How do I create a post?\n"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: isHovered? blue : Theme.of(context).textTheme.titleMedium!.color, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

        sbhmin,

        OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/qr/how-do-I-scan-qr-codes'), child: Text(AppLocalizations.of(context).translate("How do I scan QR-Codes?\n"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: isHovered? blue : Theme.of(context).textTheme.titleMedium!.color, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

        sbhmin,

        OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/requests/how-do-I-make-a-request'), child: Text(AppLocalizations.of(context).translate("How do I make a request?\n"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: isHovered? blue : Theme.of(context).textTheme.titleMedium!.color, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

        sbhmin,

        OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/wallet/how-do-I-make-withdrawals-from-my-account'), child: Text(AppLocalizations.of(context).translate("How do I make withdrawals?\n"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: isHovered? blue : Theme.of(context).textTheme.titleMedium!.color, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

        sbhmin,

        OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/settings/set-transaction-pin'), child: Text(AppLocalizations.of(context).translate("Set transaction pin\n"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: isHovered? blue : Theme.of(context).textTheme.titleMedium!.color, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),


        sbhmax,

        Text(AppLocalizations.of(context).translate('Search'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),

        SizedBox(
          width: w(context),
          child: Padding(
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
                  onFieldSubmitted: (String value) => BlocProvider.of<GuidesBloc>(context).add(SupportSearchEvent(query)),
                  onChanged: (value) {query = value.trim();},
                  focusNode: _textFieldFocusNode,
                ),
              ),
              optionsBuilder: (textEditingValue) {
                final input = textEditingValue.text.toLowerCase();
                if (input.isEmpty) return const Iterable<String>.empty();
                return suggestions.where((s) => s.toLowerCase().contains(input));
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
                              context.go('/guides/${option}');
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
        ),



        sbhmax, sbhmax,


        Text(AppLocalizations.of(context).translate('Stay Updated'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),

        sbhmin,

        Text(AppLocalizations.of(context).translate('Get the latest releases of the Goyerv app for all of your devices on all platforms.'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge),

        sbhavg,


        OutlinedButton(
          onPressed: () => context.go('/download'),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: transparent, width: 1),
            shape: StadiumBorder(),
            backgroundColor: blue.shade600,
            foregroundColor: white,
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 17.0),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              splashFactory: InkRipple.splashFactory, // Default splash factory
              splashColor: Colors.transparent, // Optional: Make splash invisible
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min, 
              children: [
                FaIcon(FontAwesomeIcons.download, size: 15.0, color: white),
            
                sbwmin,
            
                Text(AppLocalizations.of(context).translate("Download"), style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: white, fontWeight: FontWeight.normal),)
              ],
            ),
          ),
        ),
         
        
        sbhmax, sbhmax,
 
        Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: MediaQuery.of(context).size.width > 600 ? 250 : 0,
          runSpacing: 16,
          direction: MediaQuery.of(context).size.width > 600 ? Axis.horizontal : Axis.vertical,
          children: [
            
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              decoration: BoxDecoration(
                color: transparent,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(Icons.headphones_outlined, size: 50.0, color: Colors.orange),
                  FaIcon(FontAwesomeIcons.paperPlane, size: 50.0, color: Colors.deepOrange),

                  sbhmin,

                  TextButton(
                    onPressed: () => context.go('/email-support'),
                    child: Text(
                      AppLocalizations.of(context).translate('Contact support'),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: blue),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              decoration: BoxDecoration(
                color: transparent,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.people_outline_rounded, size: 50.0, color: Colors.teal),
                  sbhmin,
                  TextButton(
                    onPressed: () => launchUrl(Uri.parse('https://community.goyerv.com')),
                    child: Text(
                      AppLocalizations.of(context).translate('Join the community'),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: blue),
                    ),
                  ),
                ],
              ),
            ),
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
  


  double w(BuildContext context) {

    if(MediaQuery.of(context).size.width <= 500) {
      return MediaQuery.of(context).size.width;
    
    } else 
    if(MediaQuery.of(context).size.width <= 800 && MediaQuery.of(context).size.width > 500) {
      return MediaQuery.of(context).size.width * 0.5;
    
    } else 
    if (MediaQuery.of(context).size.width <= 900 && MediaQuery.of(context).size.width > 800) {
      return MediaQuery.of(context).size.width * 0.7;
    
    } else 
    if(MediaQuery.of(context).size.width <= 1200 && MediaQuery.of(context).size.width > 900) {
      return MediaQuery.of(context).size.width * 0.5;
    
    } else 
    if(MediaQuery.of(context).size.width > 1200) {
      return MediaQuery.of(context).size.width * 0.3;
    
    } return MediaQuery.of(context).size.width * 0.3;
  }


  double h(BuildContext context) {

    if(MediaQuery.of(context).size.width <= 500) {
      return MediaQuery.of(context).size.height * 0.8;
    
    } else 
    if(MediaQuery.of(context).size.width <= 800 && MediaQuery.of(context).size.width > 500) {
      return MediaQuery.of(context).size.height * 0.8;
    
    } else 
    if (MediaQuery.of(context).size.width <= 900 && MediaQuery.of(context).size.width > 800) {
      return MediaQuery.of(context).size.height * 0.7;
    
    } else 
    if(MediaQuery.of(context).size.width <= 1200 && MediaQuery.of(context).size.width > 900) {
      return MediaQuery.of(context).size.height * 0.6;
    
    } else 
    if(MediaQuery.of(context).size.width > 1200) {
      return MediaQuery.of(context).size.height * 0.6;
    
    } return MediaQuery.of(context).size.height * 0.6;
  }




}