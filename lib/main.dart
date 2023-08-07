// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'dependency_injections.dart' as di;
import 'index.dart'; 


void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const GoyervSupport());
}  