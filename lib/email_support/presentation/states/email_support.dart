// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:path_provider/path_provider.dart';

import '../../../dependency_injections.dart';
import '../../../guides/presentation/states/guides.dart';
import '../../../web_core/auth/security.dart';
import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../../../web_core/widget/widget.dart';
import '../bloc/email_support_bloc.dart';

class EmailSupport extends StatefulWidget {

  const EmailSupport({Key? key}) : super(key: key);

  @override
  State<EmailSupport> createState() => _EmailSupportState();

}

class _EmailSupportState extends State<EmailSupport> {


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
    super.initState();
  }





  // @override
  // Widget build(BuildContext context) {
    // return Scaffold(
      // appBar: appBar(context),
      // body: Container(
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        // color: Theme.of(context).primaryColor,
        // child: BlocProvider(
          // create: ((context) => sl<EmailSupportBloc>()),
          // child: Column(
            // children: [
// 
              // BlocConsumer(
                // listener: ((context, state) {}),
                // builder: ((context, state) {
                  // if (state is EmailSupportInitial) {
                    // return Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10), child: form(context));
                  // 
                  // } else 
                  // if (state is EmailSupportLoading) {
                    // return const Center(child: GradientCircularProgressIndicator(gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [defaultColor, white]), radius: 200));
                  // 
                  // } else 
                  // if (state is EmailSupportLoaded) {
                    // if(state.emailSupportEntity.supportRequestSent!) {
                      // images!.clear();
                      // Navigator.of(context).pop();
// 
                    // }
                  // 
                  // } return Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10), child: form(context));
                // }),
              // )
// 
            // ],
          // )
        // ),
      // )
    // );
  // }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),

      body: Title(
        // title: AppLocalizations.of(context).translate('Goyerv - Email support'),
        title: 'Goyerv - Email support',
        color: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [



              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
              
                    sbhmax,
                    sbhmax,
                  
                    // Text(AppLocalizations.of(context).translate('Email Support'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge) ,
                    Text('Email Support', textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge) ,
                   
                    sbhmax,
                    sbhmax,
                  
                  
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // Text(AppLocalizations.of(context).translate('Submit a ticket'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleMedium),
                        Text('Submit a ticket', textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleMedium),

                        sbhmin,

                        RichText(
                          text: TextSpan(
                            children: [
                              // TextSpan(text: AppLocalizations.of(context).translate('We strongly suggest that you go through the '), style: Theme.of(context).textTheme.bodyLarge),
                              TextSpan(text: 'We strongly suggest that you go through the ', style: Theme.of(context).textTheme.bodyLarge),
              
                              // TextSpan(text: AppLocalizations.of(context).translate('How Tos'), recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600, color: defaultColor)),
                              TextSpan(text: 'How Tos', recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600, color: defaultColor)),
              
                              // TextSpan(text: AppLocalizations.of(context).translate(' and the '), style: Theme.of(context).textTheme.bodyLarge),
                              TextSpan(text: ' and the ', style: Theme.of(context).textTheme.bodyLarge),
              
                              // TextSpan(text: AppLocalizations.of(context).translate('FAQs'), recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600, color: defaultColor)),
                              TextSpan(text: 'FAQs', recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600, color: defaultColor)),
              
                              // TextSpan(text: AppLocalizations.of(context).translate(''' first before you submit a ticket to us for support. Only until you're fully convinced that the issue you're having has'nt been addressed on the How Tos guides and FAQs, should you proceed to to filling out this support ticket form'''), style: Theme.of(context).textTheme.bodyLarge),
                              TextSpan(text: ''' first before you submit a ticket to us for support. Only until you're fully convinced that the issue you're having has'nt been addressed on the How Tos guides and FAQs, should you proceed to to filling out this support ticket form''', style: Theme.of(context).textTheme.bodyLarge),
              
              
                            ]
                          )
                        ),
                      ],
                    ),
                  

                    sbhmax,
                    sbhmax,
                    
              
                  
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Wrap(children: [Text(AppLocalizations.of(context).translate('Email address'), style: Theme.of(context).textTheme.titleMedium), Text('*', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: red),),]),
                  
                          sbhmin,
                  
                          SizedBox(
                            width: MediaQuery.of(context).size.width < 800? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.5,
                            height: 40.0,
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
                  
                          Wrap(children: [Text(AppLocalizations.of(context).translate('Describe your issue'), style: Theme.of(context).textTheme.titleMedium), Text('*', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: red),)],),
                  
                          sbhmin,
                  
                          SizedBox(
                            width: MediaQuery.of(context).size.width < 800? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.5,
                            height: 100.0,
                            child: TextFormField(
                              controller: _textFieldControllerTwo,
                              style: Theme.of(context).textTheme.bodyLarge,
                              maxLines: MediaQuery.of(context).size.height.toInt(),
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
              
              
                          // Container(
                            // width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height,
                            // color: Theme.of(context).primaryColor,
                            // child: Card(
                              // elevation: 0.0,
                              // child: images != null?  GridView.builder(
                                // itemCount: images!.length,
                                // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10), 
                                // itemBuilder: (context, index) {
                                  // return GestureDetector(
                                    // child: SizedBox(
                                      // width: MediaQuery.of(context).size.width * 0.3,
                                      // height: 200,
                                      // child: Card(
                                        // child: Image.memory(base64Decode(decrypt((images![index]))), fit: BoxFit.scaleDown, semanticLabel: AppLocalizations.of(context).translate('Support ticket images')),
                                      // ),
                                    // ),
                                  // );
                                // }
                              // ) : Center(
                                // child: Column(
                                  // children: [
                        // 
                                    // IconButton(onPressed: () async => await pickImage(), iconSize: 30.0, icon: photoIcon, focusColor: defaultColor, focusNode: _buttonFocusNodeOne),
                        // 
                                    // sbhmin,
                        // 
                                    // Text(AppLocalizations.of(context).translate('Choose image'), style: Theme.of(context).textTheme.bodyLarge),
                        // 
                                  // ]
                                // ),
                              // ),
                        // 
                            // )
                          // ),



                          ElevatedButton(
                            onPressed: (){},
                            // onPressed: () { if(_formKey.currentState!.validate()) { _textFieldControllerOne.clear(); _textFieldControllerTwo.clear();  BlocProvider.of<EmailSupportBloc>(context).add(SendSupportTicketEvent(email, issue, images));} }, 
                            child: Text(AppLocalizations.of(context).translate('Submit'), style: Theme.of(context).textTheme.labelLarge!.copyWith(color: white)),
                            style: Theme.of(context).elevatedButtonTheme.style!.copyWith(padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width < 800? MediaQuery.of(context).size.width * 0.43 : MediaQuery.of(context).size.width * 0.23, vertical: 25.0))),
                            focusNode: _buttonFocusNodeTwo,
                          ),

                          sbhmax,

                          SizedBox(width: MediaQuery.of(context).size.width < 800? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.5, child: Text(AppLocalizations.of(context).translate('Please note: ensure that the form you have just filled dose not contain personal or sensitive details like your credit card information, home address, passwords etc.'), style: Theme.of(context).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w500))),

                          sbhmin,

                          SizedBox(width: MediaQuery.of(context).size.width < 800? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.5, child: Text(AppLocalizations.of(context).translate('Expect a response from us within one business day or less.'), style: Theme.of(context).textTheme.labelLarge)),


                  
                        ],
                      ),
                    ),
                  
                    
                  
              

              
                  
                  
                  ],
                ),
              ),

              sbhmax,
              sbhmax,
              
              // Footer
              footer(context, setState)
              
            ],
          ),
        ),
      ),
    );
 
  }




  Future<void> pickImage() async {
    try {
      final result = await FilePicker.platform.pickFiles(onFileLoading: (status) { setState(() {});}, type: FileType.image, allowMultiple: true );

      if (result != null) {
        setState(() {images = result.files.map((e) => encrypt(base64Encode(e.bytes!))).toList(); });
      }
    
    } on PlatformException {
      throw Exception(AppLocalizations.of(context).translate('Platform interaction failed')); 
    
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