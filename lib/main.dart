

import 'package:flutter/material.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/projects.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {

      'home':(context) => MyHome(),
      'about':(context) => MyAbout(),
      'projects':(context) => MyProjects(),
    },
  ));
}


