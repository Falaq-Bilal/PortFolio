import 'package:flutter/material.dart';
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
      home: Portfolio(),
    );
  }
}