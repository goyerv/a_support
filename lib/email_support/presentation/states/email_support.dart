// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:footer/footer_view.dart';

import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../../../web_core/util/gradient.dart';
import '../../../widget/widget.dart';
import '../bloc/email_support_bloc.dart';


class EmailSupport extends StatefulWidget {

  final void Function(Locale) onLocaleChanged;

  const EmailSupport(this.onLocaleChanged, {Key? key}) : super(key: key);

  @override
  State<EmailSupport> createState() => _EmailSupportState();

}


class _EmailSupportState extends State<EmailSupport> with SingleTickerProviderStateMixin {


  late TextEditingController _textFieldControllerOne;
  late TextEditingController _textFieldControllerTwo;
  late FocusNode _textFieldFocusNodeOne;
  late FocusNode _textFieldFocusNodeTwo;
  late FocusNode _buttonFocusNodeOne;
  late FocusNode _buttonFocusNodeTwo;
  late GlobalKey<FormState> _formKey;

  late String email;
  late String issue;
  late List<String>? images;
  late List<String>? imageFiles;

  bool showLoadingIndicator = false;
  bool showConfirmationMessage = false;
  bool imageLoading = false;

  late AnimationController _controller;
  late Animation<double> _animation;



  @override 
  void initState() {
    _textFieldControllerOne = TextEditingController();
    _textFieldControllerTwo = TextEditingController();
    _textFieldFocusNodeOne = FocusNode();
    _textFieldFocusNodeTwo = FocusNode();
    _buttonFocusNodeOne = FocusNode();
    _buttonFocusNodeTwo = FocusNode();
    _formKey = GlobalKey();
    images = [];
    imageFiles = [];
    _controller = AnimationController(duration: Duration(seconds: 5), vsync: this, )..repeat();
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: AppLocalizations.of(context).translate('Goyerv - Email support'),
        color: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: FooterView(
            footer: footer(context, widget.onLocaleChanged),
            flex: 8,
            children: [
          
          
              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width >= 800? 50.0 : 16.0),
                child: BlocConsumer<EmailSupportBloc, EmailSupportState>(
                  listener: ((context, state) {}),
                  builder: ((context, state) {
                    if (state is EmailSupportInitial) {
                      boilerPlate(context);
                    
                    } else 
                    if (state is EmailSupportLoading) {
                      // return Center(child: AnimatedBuilder(animation: _animation, builder: (context, child) {return GradientCircularProgressIndicator(value: _animation.value, gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [defaultColor, defaultColor.withAlpha(191), defaultColor.withAlpha(128), defaultColor.withAlpha(64), white], stops: [0.0, 0.25, 0.5, 0.75, 1.0]), radius: 200); })); 
                      WidgetsBinding.instance.addPostFrameCallback((_) { if (mounted) { setState(() {showLoadingIndicator = true;}); }}); 
                
                    
                    } else 
                    if (state is EmailSupportLoaded) {
                      if(state.emailSupportEntity.supportRequestSent!) {
                        
                        /// Show loading indicator, Show confirmation message
                        setState((){showLoadingIndicator = false; showConfirmationMessage = true;});
                        
                        /// Wait 2 seconds
                        Future.delayed(Duration(seconds: 2));
                        
                        /// Do not show confirmation message
                        setState((){showConfirmationMessage = false;});
                
                        /// Clear images
                        images!.clear();
                        
                        /// Return
                        boilerPlate(context);
                      
                      }
                    
                    } return boilerPlate(context);
                  }),
                ),
              )
          
          
            ]
          ),
        ),
      ),
    );
  }





  Widget boilerPlate(BuildContext context) {
    return Column(
      children: [

        sbhmax,
        sbhmax,

        Text(AppLocalizations.of(context).translate('Email Support'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineLarge),

        sbhmax,


        showLoadingIndicator? AnimatedBuilder(animation: _animation, builder: (context, child) {return GradientCircularProgressIndicator(value: _animation.value, gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [defaultColor, defaultColor.withAlpha(191), defaultColor.withAlpha(128), defaultColor.withAlpha(64), white], stops: [0.0, 0.25, 0.5, 0.75, 1.0]), radius: 200); }) 
        
        :
        
        showConfirmationMessage? Column(
          children: [
                            
            Container(width: 50.0, height: 50.0, decoration: BoxDecoration(color: green, shape: BoxShape.circle), child: Icon(check, color: white, size: 30.0, semanticLabel: AppLocalizations.of(context).translate('Check mark'))),
                            
            sbhavg,
                            
            Text(AppLocalizations.of(context).translate('Ticket submitted'), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: grey)),

            ],
          ) 
          
          : 
          
          Form(
          key: _formKey,
          child: SizedBox(
            width: MediaQuery.of(context).size.width < 800? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

            
                Row(children: [Text(AppLocalizations.of(context).translate('Email address'), style: Theme.of(context).textTheme.titleMedium), Text('*', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: red),),]),
                    
                sbhmin,
                    
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: _textFieldControllerOne,
                    style: Theme.of(context).textTheme.bodyLarge,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      hintText: AppLocalizations.of(context).translate('Email'),
                    ),
                    cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
                    textInputAction: TextInputAction.done,
                    validator: (value) {if (value!.trim().contains('<') || value.trim().contains('>') || value.isEmpty || !value.trim().contains('@') || !value.trim().contains('.')) {return AppLocalizations.of(context).translate('Invalid email address'); } return null; },
                    onFieldSubmitted: (String value) { FocusScope.of(context).requestFocus(_textFieldFocusNodeTwo); },
                    onChanged: (value) {email = value.trim();},
                    focusNode: _textFieldFocusNodeOne,
                  )
                ),
                    
                sbhmax,
                    
                Row(children: [Text(AppLocalizations.of(context).translate('Describe your issue'), style: Theme.of(context).textTheme.titleMedium), Text('*', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: red),)],),
                    
                sbhmin,
                    
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: _textFieldControllerTwo,
                    style: Theme.of(context).textTheme.bodyLarge,
                    maxLines: null,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      hintText: AppLocalizations.of(context).translate('What is the problem?'),
                    ),
                    cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
                    textInputAction: TextInputAction.done,
                    validator: (value) {if (value!.isEmpty) {return AppLocalizations.of(context).translate('Invalid input');} return null; },
                    onFieldSubmitted: (String value) { FocusScope.of(context).requestFocus(_buttonFocusNodeTwo); },
                    onChanged: (value) {email = value.trim();},
                    focusNode: _textFieldFocusNodeTwo,
                  )
                ),
                
                
                sbhmax,
                
                images!.isNotEmpty? GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ), 
                  itemCount: images!.length,
                  itemBuilder: (context, i) {
                    return Stack(
                      children: [

                        SizedBox(
                          height: 150.0,
                          width: const BoxConstraints().maxWidth * 0.65,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(17),
                            child: imageLoading? Center(child: AnimatedBuilder(animation: _animation, builder: (context, child) {return GradientCircularProgressIndicator(value: _animation.value, gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [defaultColor, defaultColor.withAlpha(191), defaultColor.withAlpha(128), defaultColor.withAlpha(64), white], stops: [0.0, 0.25, 0.5, 0.75, 1.0]), radius: 30); })) : Image.memory(base64Decode(images![i]), fit: BoxFit.cover )
                          ),
                        ),
        
                        Positioned(
                          top: 10.0,
                          right: 10.0,
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                              child: Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3),   
                                  shape: BoxShape.circle, 
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      images!.removeAt(i);
                                    });
                                  }, 
                                  icon: xMarkIcon,
                                  iconSize: 20.0,
                                  color: white,
                                )
                              ),
                            )
                          )
                        ),
        
                      ],
                    );
                  }
                ) : Container(),

                sbhavg,
                
                SizedBox(
                  width: 40.0,
                  height: 40.0,
                  child: IconButton(
                    onPressed: () async => pickImage(),
                    focusNode: _buttonFocusNodeOne,
                    icon: Icon(pin), 
                    iconSize: 25.0,
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ),

                sbhavg,
            
            
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () { if(_formKey.currentState!.validate()) { _textFieldControllerOne.clear(); _textFieldControllerTwo.clear(); images!.clear(); BlocProvider.of<EmailSupportBloc>(context).add(SendSupportTicketEvent(email, issue, images));} },
                        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0)), shape: WidgetStateProperty.all(const StadiumBorder()), backgroundColor: WidgetStateProperty.all(defaultColor)),
                        focusNode: _buttonFocusNodeTwo, 
                        child: Text(AppLocalizations.of(context).translate('Submit'), style: Theme.of(context).textTheme.labelLarge!.copyWith(color: white)),
                      ),
                    ),
                  ],
                ),
            
                sbhavg,
            
                SizedBox(width: MediaQuery.of(context).size.width < 800? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.5, child: Text(AppLocalizations.of(context).translate("Please note: ensure that the form you have just filled does not contain personal or sensitive details like your credit card information, home address, passwords etc.\nExpect a response from us within one business day or less."), style: Theme.of(context).textTheme.labelLarge)),
            
            
            
              ],
            ),
          ),
        ),



      ],
    );
  }









  Future<void> pickImage() async {
    try {
      final result = await FilePicker.platform.pickFiles(type: FileType.image, allowMultiple: true, withData: true);
  
      if (result != null && result.files.isNotEmpty) {
        List<String> base64List = [];
  
        for (final picked in result.files) {
          final bytes = picked.bytes ?? await File(picked.path!).readAsBytes();
          final base64Image = base64Encode(bytes);
          base64List.add(base64Image);
          setState(() {images!.add(base64Image);});
        }
       
      }
      
    } on PlatformException {
        final snackBar = SnackBar(width: MediaQuery.of(context).size.width * 0.35, padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), content: Text(AppLocalizations.of(context).translate("We were unable to access your device's gallery")), behavior: SnackBarBehavior.floating, duration: Duration(seconds: 2)); ScaffoldMessenger.of(context).showSnackBar(snackBar);
      
    }
  }




  @override 
  void dispose() {
    _textFieldControllerOne.dispose();
    _textFieldControllerTwo.dispose();
    _textFieldFocusNodeOne.dispose();
    _textFieldFocusNodeTwo.dispose();
    _buttonFocusNodeOne.dispose();
    _buttonFocusNodeTwo.dispose();
    super.dispose();
  }


}