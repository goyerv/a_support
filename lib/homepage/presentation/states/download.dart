// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:footer/footer_view.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../web_core/global_fields/fields.dart';
import '../../../../../web_core/internationalization/app_localizations.dart';
import '../../../widget/widget.dart';


class Download extends StatefulWidget {

  final void Function(Locale) onLocaleChanged;
  
  const Download(this.onLocaleChanged, {Key? key}) : super(key: key);

  @override
  State<Download> createState() => _DownloadState();

}



class _DownloadState extends State<Download> {


  // ANDROID - ARM64 (arm64-v8a) `flutter build apk --target-platform android-arm64`
  // WINDOWS - x86_64 (amd64) `flutter build windows`
  // LINUX x86_64 (amd64) `flutter build linux`
  // iOS ARM64 `flutter build ios --release` [unavailable]
  
  // MacOS ARM64 `flutter build macos`
  // Codesigning and Notarization (recommended)
  // If you don’t sign the app, macOS will freak out: “This app is from an unidentified developer.”

  // You can either:
  // Have your users bypass it by right-clicking → Open.
  // Or sign (using notarytool) and notarize the app with Apple to reduce warnings:
  // `codesign --deep --force --verbose --sign "Developer ID Application: YOUR NAME" YourApp.app`





  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: AppLocalizations.of(context).translate("Goyerv Support - Download Goyerv"),
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
                child: Column(
                  children: [

                    sbhavg,


                    Text(AppLocalizations.of(context).translate("Download Goyerv"), textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineLarge),
                    Text(AppLocalizations.of(context).translate("Free and powered by open source. Crowdsourcing deliveries and logistics."), textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w400)),

                    sbhmax,


                    Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: MediaQuery.of(context).size.width > 600 ? 30 : 0,
                      runSpacing: 30,
                      direction: MediaQuery.of(context).size.width > 600 ? Axis.horizontal : Axis.vertical,
                      children: [


                        SizedBox(
                          
                          child: Column(
                            children: [

                              SvgPicture.asset('assets/images/android.svg', height: MediaQuery.of(context).size.height * 0.3),
                              // SvgPicture.asset('assets/images/float.svg', height: MediaQuery.of(context).size.height * 0.3, colorFilter: ColorFilter.mode(Theme.of(context).brightness == Brightness.dark? white : black, BlendMode.srcIn)),

                              sbhmin,

                              Text("ARM64 (arm64-v8a)", textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey)),


                              TextButton(onPressed: () => launchUrl(Uri.parse('https://support.goyerv.com/assets/goyerv-android.apk'), mode: LaunchMode.externalApplication), child: Text(AppLocalizations.of(context).translate("Download\n"), textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: blue))),


                              

                            ],
                          ),
                        ),



                        SizedBox(
                          
                          child: Column(
                            children: [

                              SvgPicture.asset('assets/images/windows.svg', height: MediaQuery.of(context).size.height * 0.3),
                              // SvgPicture.asset('assets/images/float.svg', height: MediaQuery.of(context).size.height * 0.3, colorFilter: ColorFilter.mode(Theme.of(context).brightness == Brightness.dark? white : black, BlendMode.srcIn)),

                              sbhmin,

                              Text("x86_64 (amd64)", textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey)),


                              TextButton(onPressed: () => launchUrl(Uri.parse('https://support.goyerv.com/assets/goyerv-windows.apk'), mode: LaunchMode.externalApplication), child: Text(AppLocalizations.of(context).translate("Download\n"), textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: blue))),


                              

                            ],
                          ),
                        ),



                        SizedBox(
                          
                          child: Column(
                            children: [

                              SvgPicture.asset('assets/images/linux.svg', height: MediaQuery.of(context).size.height * 0.3),
                              // SvgPicture.asset('assets/images/float.svg', height: MediaQuery.of(context).size.height * 0.3, colorFilter: ColorFilter.mode(Theme.of(context).brightness == Brightness.dark? white : black, BlendMode.srcIn)),

                              sbhmin,

                              Text("x86_64 (amd64)", textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey)),


                              TextButton(onPressed: () => launchUrl(Uri.parse('https://support.goyerv.com/assets/goyerv-linux.apk'), mode: LaunchMode.externalApplication), child: Text(AppLocalizations.of(context).translate("Download\n"), textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: blue))),


                              

                            ],
                          ),
                        ),



                        SizedBox(
                          
                          child: Column(
                            children: [

                              SvgPicture.asset('assets/images/apple.svg', height: MediaQuery.of(context).size.height * 0.3, colorFilter: ColorFilter.mode(Theme.of(context).brightness == Brightness.dark? white : black, BlendMode.srcIn)),

                              sbhmin,

                              Text("ARM64 [Intel, Apple Silicon]", textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey)),


                              TextButton(onPressed: null, child: Text(AppLocalizations.of(context).translate("Download (iOS)\n"), textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey))),

                            ],
                          ),
                        ),



                        SizedBox(
                          
                          child: Column(
                            children: [

                              SvgPicture.asset('assets/images/apple.svg', height: MediaQuery.of(context).size.height * 0.3, colorFilter: ColorFilter.mode(Theme.of(context).brightness == Brightness.dark? white : black, BlendMode.srcIn)),

                              sbhmin,

                              Text("ARM64 [Intel, Apple Silicon]", textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey)),


                              TextButton(onPressed: null, child: Text(AppLocalizations.of(context).translate("Download (MacOS)\n"), textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey))),


                              

                            ],
                          ),
                        ),

                      ],
                    )

                  ],
                )
              )


            ]
          ),
        ),
      ),
    );
  }


}