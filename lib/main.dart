// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:myplants/core.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Widget mainview = WelcomeView();

  var defaultTheme;
  return runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false, theme: defaultTheme, home: mainview));
}
