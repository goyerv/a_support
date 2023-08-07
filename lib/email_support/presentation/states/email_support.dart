// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:path_provider/path_provider.dart';

import '../../../dependency_injections.dart';
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
    super.initState();
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).primaryColor,
        child: BlocProvider(
          create: ((context) => sl<EmailSupportBloc>()),
          child: Column(
            children: [

              BlocConsumer(
                listener: ((context, state) {}),
                builder: ((context, state) {
                  if (state is EmailSupportInitial) {
                    return Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10), child: form(context));
                  
                  } else 
                  if (state is EmailSupportLoading) {
                    return const Center(child: GradientCircularProgressIndicator(gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [defaultColor, white]), radius: 200));
                  
                  } else 
                  if (state is EmailSupportLoaded) {
                    if(state.emailSupportEntity.supportRequestSent!) {
                      images!.clear();
                      Navigator.of(context).pop();

                    }
                  
                  } return Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10), child: form(context));
                }),
              )

            ],
          )
        ),
      )
    );
  }





  Widget form(BuildContext context) {
    return ListView(
      children: [

        Text(AppLocalizations.of(context).translate('Email Support'), style: Theme.of(context).textTheme.titleLarge) ,
       
        sbhavg,

        sbhmin,

        Text(AppLocalizations.of(context).translate('Submit a ticket'), style: Theme.of(context).textTheme.titleMedium),

        sbhmin,

        Text(AppLocalizations.of(context).translate('We strongly suggest that you go through the HOW Tos guides and the FAQ first before you submit a ticket to us for support. Only until you\'re fully convinced that the issue you\'re having has\'nt been addressed on the How Tos guides and FAQ, should you proceed to to filling out this support ticket form'), style: Theme.of(context).textTheme.bodyLarge),

        sbhmin,

        LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 1500) {
            return Column(
              children: [

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [

                        Row(children: [Text(AppLocalizations.of(context).translate('Email address'), style: Theme.of(context).textTheme.titleMedium), Text('*', style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: red),)],),

                        sbhmin,

                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 30.0,
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

                        sbhmin,

                        Row(children: [Text(AppLocalizations.of(context).translate('Describe your issue'), style: Theme.of(context).textTheme.titleMedium), Text('*', style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: red),)],),

                        sbhmin,

                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: _textFieldControllerTwo,
                            style: Theme.of(context).textTheme.bodyLarge,
                            maxLines: MediaQuery.of(context).size.height.toInt(),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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


                      ],
                    ),
                  ),

                ),

                sbhavg,

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Theme.of(context).primaryColor,
                  child: Card(
                    elevation: 0.0,
                    child: images != null?  GridView.builder(
                      itemCount: images!.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10), 
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: 200,
                            child: Card(
                              child: Image.memory(base64Decode(decrypt((images![index]))), fit: BoxFit.scaleDown, semanticLabel: AppLocalizations.of(context).translate('Support ticket images')),
                            ),
                          ),
                        );
                      }
                    ) : Center(
                      child: Column(
                        children: [

                          IconButton(onPressed: () async => await pickImage(), icon: photoIcon, focusColor: defaultColor, focusNode: _buttonFocusNodeOne),

                          sbhmin,

                          Text(AppLocalizations.of(context).translate('Choose image'), style: Theme.of(context).textTheme.bodyLarge),

                        ]
                      ),
                    ),

                  )
                )



              ],
            );
          
          } else {
              return Row(
                children: [

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [

                          Row(children: [Text(AppLocalizations.of(context).translate('Email address'), style: Theme.of(context).textTheme.titleMedium), Text('*', style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: red),)],),

                          sbhmin,

                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: 30.0,
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

                          sbhavg,

                          Row(children: [Text(AppLocalizations.of(context).translate('Describe your issue'), style: Theme.of(context).textTheme.titleMedium), Text('*', style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: red),)],),

                          sbhmin,

                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.95,
                            child: TextFormField(
                              controller: _textFieldControllerTwo,
                              style: Theme.of(context).textTheme.bodyLarge,
                              maxLines: MediaQuery.of(context).size.height.toInt(),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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


                        ],
                      ),
                    ),

                  ),

                  sbwmin,

                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.75,
                    color: Theme.of(context).primaryColorLight,
                    child: Card(
                      elevation: 0.0,
                      child: images != null?  GridView.builder(
                        itemCount: images!.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10), 
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 200,
                              child: Card(
                                child: Image.memory(base64Decode(decrypt((images![index]))), fit: BoxFit.scaleDown, semanticLabel: AppLocalizations.of(context).translate('Support ticket images')),
                              ),
                            ),
                          );
                        }
                      ) : Center(
                        child: Column(
                          children: [

                            IconButton(onPressed: () async => await pickImage(), icon: photoIcon, focusColor: defaultColor, focusNode: _buttonFocusNodeOne),

                            sbhmin,

                            Text(AppLocalizations.of(context).translate('Choose image'), style: Theme.of(context).textTheme.bodyLarge),

                          ]
                        ),
                      ),

                    )
                  )



                ],
              );


            }
          }
        ),


        sbhavg,

        Text(AppLocalizations.of(context).translate('Please note: ensure that the form you have just filled dose not contain personal and or sensitive details like you credit card information, home address, passwords e.t.c.'), style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500)),

        sbhmin,

        LayoutBuilder(
          builder: (context, constraints) {
            if(constraints.maxWidth < 1500 ) {
              return Expanded(
                child: ElevatedButton(
                  onPressed: () { if(_formKey.currentState!.validate()) { _textFieldControllerOne.clear(); _textFieldControllerTwo.clear();  BlocProvider.of<EmailSupportBloc>(context).add(SendSupportTicketEvent(email, issue, images));} }, 
                  child: Text(AppLocalizations.of(context).translate('Submit'), style: Theme.of(context).textTheme.labelLarge!.copyWith(color: white)),
                  style: Theme.of(context).elevatedButtonTheme.style!..copyWith(padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.width * 0.9 ) * 0.12, vertical: 17.0))),
                  focusNode: _buttonFocusNodeTwo,
                )
              );
                
            } else {
              return ElevatedButton(
                onPressed: () { if(_formKey.currentState!.validate()) { _textFieldControllerOne.clear(); _textFieldControllerTwo.clear();  BlocProvider.of<EmailSupportBloc>(context).add(SendSupportTicketEvent(email, issue, images));} },
                child: Text(AppLocalizations.of(context).translate('Submit'), style: Theme.of(context).textTheme.labelLarge!.copyWith(color: white)),
                style: Theme.of(context).elevatedButtonTheme.style!..copyWith(padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.width * 0.9 ) * 0.12, vertical: 17.0))),
                focusNode: _buttonFocusNodeTwo
              );
            }
          }
        ),


        sbhmin,

        Text(AppLocalizations.of(context).translate('Expect a response from us within one business day or less.'), style: Theme.of(context).textTheme.bodyLarge),


      ],
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