import 'package:flutter/material.dart';
import 'package:portfolio/components/Custom_Aboutme.dart';
import 'package:portfolio/components/Custom_Contact.dart';
import 'package:portfolio/components/Custom_Education.dart';
import 'package:portfolio/components/Custom_Header.dart';
import 'package:portfolio/components/Custom_Project.dart';
import 'package:portfolio/utils/Themes.dart';
import 'package:portfolio/view/Portfolio.dart';

main()
{
  runApp(MyPortFolio());
}

class MyPortFolio extends StatelessWidget {
  const MyPortFolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routes: {
        '/home': (context) => HeaderContent(),
    '/about': (context) => CustomAboutme(),
    '/education': (context) => CustomEducation(),
    '/projects': (context) => CustomProject(),
    '/contact': (context) => CustomContact(),
      },
      
      home: Portfolio(),
    );
  }
}