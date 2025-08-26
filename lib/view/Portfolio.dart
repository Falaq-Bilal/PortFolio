import 'package:flutter/material.dart';
import 'package:portfolio/components/Custom_Aboutme.dart';
import 'package:portfolio/components/Custom_Contact.dart';
import 'package:portfolio/components/Custom_Education.dart';
import 'package:portfolio/components/Custom_Header.dart';
import 'package:portfolio/components/Custom_Project.dart';
import 'package:portfolio/utils/Themes.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body:  
         SingleChildScrollView(
           child: Container(
           
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1686074441885-ef5b67d89799?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fG5hdnklMjBibHVlfGVufDB8fDB8fHww") , fit: BoxFit.cover) 
            ),
             child: Column(
              children: [
                CustomHeader(),
                CustomAboutme(), 
                CustomEducation(),
                CustomProject(), 
                CustomContact(),
              ],
                     ),
           ),
         ),
      );
  }
}