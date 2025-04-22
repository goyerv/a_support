// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:footer/footer_view.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:path_provider/path_provider.dart';

import '../../../guides/presentation/states/guides.dart';
import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../bloc/email_support_bloc.dart';

class EmailSupport extends StatefulWidget {

  const EmailSupport({Key? key}) : super(key: key);

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
    images = null;
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
        child: FooterView(
          footer: footer(context),
          children: [


            Container(
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.all(MediaQuery.of(context).size.width >= 800? 50.0 : 16.0),
              child: BlocConsumer(
                listener: ((context, state) {}),
                builder: ((context, state) {
                  if (state is EmailSupportInitial) {
                    boilerPlate(context);
                  
                  } else 
                  if (state is EmailSupportLoading) {
                    // return Center(child: AnimatedBuilder(animation: _animation, builder: (context, child) {return GradientCircularProgressIndicator(value: _animation.value, gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [defaultColor, defaultColor.withAlpha(191), defaultColor.withAlpha(128), defaultColor.withAlpha(64), white], stops: [0.0, 0.25, 0.5, 0.75, 1.0]), radius: 200); })); 
                    setState((){showLoadingIndicator = true;});
                  
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
    );
  }



  Widget boilerPlate(BuildContext context) {
    return Column(
      children: [

        Text(AppLocalizations.of(context).translate('Email Support'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineLarge),

        sbhmax,




        showLoadingIndicator? AnimatedBuilder(animation: _animation, builder: (context, child) {return GradientCircularProgressIndicator(value: _animation.value, gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [defaultColor, defaultColor.withAlpha(191), defaultColor.withAlpha(128), defaultColor.withAlpha(64), white], stops: [0.0, 0.25, 0.5, 0.75, 1.0]), radius: 200); }) :
        
        showConfirmationMessage? Column(
          children: [
                            
            Container(width: 50.0, height: 50.0, decoration: BoxDecoration(color: green, shape: BoxShape.circle), child: Icon(check, color: white, size: 30.0, semanticLabel: AppLocalizations.of(context).translate('Check mark'))),
                            
            sbhavg,
                            
            Text(AppLocalizations.of(context).translate('Ticket submitted'), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: grey)),

            ],
          ) : Form(
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
                
                
                sbhavg,
                
                images!.isNotEmpty? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                  ), 
                  itemCount: images!.length,
                  itemBuilder: (context, i) {
                    return Stack(
                      children: [
                        SizedBox(
                          height: 150.0,
                          width: const BoxConstraints().maxWidth * 0.4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(17),
                            child: imageLoading? Center(child: AnimatedBuilder(animation: _animation, builder: (context, child) {return GradientCircularProgressIndicator(value: _animation.value, gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [defaultColor, defaultColor.withAlpha(191), defaultColor.withAlpha(128), defaultColor.withAlpha(64), white], stops: [0.0, 0.25, 0.5, 0.75, 1.0]), radius: 60); })) : Image.file(File(images![i]), fit: BoxFit.cover)
                          ),
                        ),
        
                        Positioned(
                          top: 10.0,
                          right: 10.0,
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
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
                ) : TextButton(onPressed: () async => pickImage(), focusNode: _buttonFocusNodeOne, child: Row(children: [Icon(pin, color: grey, size: 20), sbwmin, Text(AppLocalizations.of(context).translate('Invalid input'), style: Theme.of(context).textTheme.bodyLarge,) ],)),
            
            
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () { if(_formKey.currentState!.validate()) { _textFieldControllerOne.clear(); _textFieldControllerTwo.clear();  BlocProvider.of<EmailSupportBloc>(context).add(SendSupportTicketEvent(email, issue, images));} },
                        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0)), shape: WidgetStateProperty.all(const StadiumBorder()), backgroundColor: WidgetStateProperty.all(defaultColor)),
                        focusNode: _buttonFocusNodeTwo, 
                        child: Text(AppLocalizations.of(context).translate('Submit'), style: Theme.of(context).textTheme.labelLarge!.copyWith(color: white)),
                      ),
                    ),
                  ],
                ),
            
                sbhavg,
            
                SizedBox(width: MediaQuery.of(context).size.width < 800? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.5, child: Text(AppLocalizations.of(context).translate("Please note: ensure that the form you have just filled dose not contain personal or sensitive details like your credit card information, home address, passwords etc.\nExpect a response from us within one business day or less."), style: Theme.of(context).textTheme.labelLarge!.copyWith(color: grey))),
            
            
            
              ],
            ),
          ),
        ),



      ],
    );
  }













  Future<void> pickImage() async {
    try {
      final result = await FilePicker.platform.pickFiles(onFileLoading: (FilePickerStatus status) { setState(() { imageLoading = status == FilePickerStatus.picking; });}, type: FileType.image, allowMultiple: true );

      if (result != null) {
        setState(() {images = result.files.map((e) => base64Encode(e.bytes!)).toList(); });
      }
    
    } on PlatformException {
      final snackBar = SnackBar(width: MediaQuery.of(context).size.width * 0.35, padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), content: Text(AppLocalizations.of(context).translate("We were unable to access your device's gallery")), behavior: SnackBarBehavior.floating, duration: Duration(seconds: 2)); ScaffoldMessenger.of(context).showSnackBar(snackBar);
    
    }
  }


  Future<File> saveFile(PlatformFile file) async {
    final appStorage = await getApplicationDocumentsDirectory();
    final newFile = File('${appStorage.path}/${file.name}');
    return File(file.path!).copy(newFile.path);
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