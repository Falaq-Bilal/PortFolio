import 'package:flutter/material.dart';
import 'package:portfolio/utils/Themes.dart';

class CustomProject extends StatelessWidget {
  const CustomProject({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    int crossAxisCount;
    if (width < 600) {
      crossAxisCount = 1; // Mobile
    } else if (width < 1024) {
      crossAxisCount = 2; // Tablet
    } else {
      crossAxisCount = 3; // Desktop
    }

    final textTheme = Theme.of(context).textTheme; // shortcut

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ==== TITLE ====
          Text(
            "Projects",
            style: textTheme.displayMedium!, // Heading
          ),
          const SizedBox(height: 8),

          // ==== LINE ====
          Container(
            height: 60,
            width: 2,
            color: Themes.white,
          ),
          SizedBox(height: 3),
          Container(
            height: 4,
            width: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Themes.white,
            ),
          ),
          const SizedBox(height: 12),

          // ==== DESCRIPTION ====
          Text(
            "Here are some of my recent works, combining clean UI and efficient code.",
            textAlign: TextAlign.center,
            style: textTheme.bodyLarge!.copyWith(
              color: Themes.white.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 40),

          // ==== PROJECT CARDS ====
          GridView.count(
            crossAxisCount: crossAxisCount,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: [
              // ==== CARD EXAMPLE ====
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("assets/Youtube_Screen.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "YouTube Screen",
                          style: textTheme.displayMedium!.copyWith(
                            color: Themes.white,
                          ),
                        ),
                        const SizedBox(height: 15),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Themes.white,
                            side: BorderSide(color: Themes.white),
                          ),
                          child: const Text("View Project"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack( children: [ Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(15), image: const DecorationImage( image: AssetImage("assets/Profile_Page.jpg"), fit: BoxFit.cover, ), ), ), Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(15), color: Colors.black.withOpacity(0.4), ), ), Center( child: Column( mainAxisAlignment: MainAxisAlignment.center, children: [ Text("Profile Page", style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Themes.white)), const SizedBox(height: 15), OutlinedButton( onPressed: () {}, style: OutlinedButton.styleFrom( foregroundColor: Themes.white, side: BorderSide(color: Themes.white), ), child: const Text("View Project"), ), ], ), ), ], ), // ==== CARD 3 ==== 
              Stack( children: [ Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(15), image: const DecorationImage( image: AssetImage("assets/Sign_Up.jpg"), fit: BoxFit.cover, ), ), ), Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(15), color: Colors.black.withOpacity(0.4), ), ), Center( child: Column( mainAxisAlignment: MainAxisAlignment.center, children: [ Text("SignUp Page", style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Themes.white)), const SizedBox(height: 15), OutlinedButton( onPressed: () {}, style: OutlinedButton.styleFrom( foregroundColor: Themes.white, side: BorderSide(color: Themes.white), ), child: const Text("View Project"), ), ], ), ), ], ), Stack( children: [ Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(15), image: const DecorationImage( image: AssetImage("assets/whatsapp_screen.jpg"), fit: BoxFit.cover, ), ), ), Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(15), color: Colors.black.withOpacity(0.4), ), ), Center( child: Column( mainAxisAlignment: MainAxisAlignment.center, children: [ Text("WhatsApp Screen", style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Themes.white)), const SizedBox(height: 15), OutlinedButton( onPressed: () {}, style: OutlinedButton.styleFrom( foregroundColor: Themes.white, side: BorderSide(color: Themes.white), ), child: const Text("View Project"), ), ], ), ), ], ), Stack( children: [ Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(15), image: const DecorationImage( image: AssetImage("assets/google 2.png"), fit: BoxFit.cover, ), ), ), Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(15), color: Colors.black.withOpacity(0.4), ), ), Center( child: Column( mainAxisAlignment: MainAxisAlignment.center, children: [ Text("Google Screen", style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Themes.white)), const SizedBox(height: 15), OutlinedButton( onPressed: () {}, style: OutlinedButton.styleFrom( foregroundColor: Themes.white, side: BorderSide(color: Themes.white), ), child: const Text("View Project"), ), ], ), ), ], ), Stack( children: [ Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(15), image: const DecorationImage( image: AssetImage("assets/cool_bg.png"), fit: BoxFit.cover, ), ), ), Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(15), color: Colors.black.withOpacity(0.4), ), ), Center( child: Column( mainAxisAlignment: MainAxisAlignment.center, children: [ Text("Collage", style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Themes.white)), const SizedBox(height: 15), OutlinedButton( onPressed: () {}, style: OutlinedButton.styleFrom( foregroundColor: Themes.white, side: BorderSide(color: Themes.white), ), child: const Text("View Project"), ), ], ), ), ], ), Stack( children: [ Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(15), image: const DecorationImage( image: AssetImage("assets/heart_frame.png"), fit: BoxFit.cover, ), ), ), Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(15), color: Colors.black.withOpacity(0.4), ), ), Center( child: Column( mainAxisAlignment: MainAxisAlignment.center, children: [ Text("Clippaths", style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Themes.white)), const SizedBox(height: 15), OutlinedButton( onPressed: () {}, style: OutlinedButton.styleFrom( foregroundColor: Themes.white, side: BorderSide(color: Themes.white), ), child: const Text("View Project"), ), ], ), ), ], ), ], ),

            
            ],
          ),
        
      );
  }
}
