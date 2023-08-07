// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:goyerv_support_web_app/web_core/widget/widget.dart';

import '../widgets/homepage_widget.dart';


class Homepage extends StatefulWidget {

  const Homepage({Key? key}) : super(key: key);
  
  @override
  State<Homepage> createState() => _HomepageState();

}

class _HomepageState extends State<Homepage> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), This will
        // get in the way of some fine wizardry that'll get served in Bloc
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Expanded(
                child: ListView(
                  children: const [
                          
                    //homepage
                   HomepageWidget(),
              
                  ]
                ),
              ),
            ),


            // Footer
            footer(context, setState)

          ],
        ),
      ),
    );
  }

}