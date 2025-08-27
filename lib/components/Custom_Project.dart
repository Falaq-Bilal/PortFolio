import 'package:flutter/material.dart';
import 'package:portfolio/utils/Themes.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomProject extends StatelessWidget {
  const CustomProject({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Future<void> _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}


    int crossAxisCount;
    if (width < 500) {
      crossAxisCount = 1; // Mobile
    } else if (width < 1024) {
      crossAxisCount = 2; // Tablet
    } else {
      crossAxisCount = 3; // Desktop
    }

    final textTheme = Theme.of(context).textTheme; // shortcut

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1686074441885-ef5b67d89799?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fG5hdnklMjBibHVlfGVufDB8fDB8fHww") , fit: BoxFit.cover)),
      child: SingleChildScrollView(
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
                            onPressed: () {_launchURL("https://falaq-bilal.github.io/Youtube_Screen_Web/");},
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
                
               Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("assets/cool_bg.png"),
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
                            "Collage",
                            style: textTheme.displayMedium!.copyWith(
                              color: Themes.white,
                            ),
                          ),
                          const SizedBox(height: 15),
                          OutlinedButton(
                            onPressed: () {_launchURL("https://falaq-bilal.github.io/Collage_Using_Stack_Web/");},
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
                
        
                 Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("assets/insta_scroll.jpg"),
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
                            "Instagram Scroll",
                            style: textTheme.displayMedium!.copyWith(
                              color: Themes.white,
                            ),
                          ),
                          const SizedBox(height: 15),
                          OutlinedButton(
                            onPressed: () {_launchURL("https://falaq-bilal.github.io/Insta_Post_Scroll_Web/");},
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
                
        
                
        
                 Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("assets/Profile_Page.jpg"),
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
                            "Profile Page",
                            style: textTheme.displayMedium!.copyWith(
                              color: Themes.white,
                            ),
                          ),
                          const SizedBox(height: 15),
                          OutlinedButton(
                            onPressed: () {_launchURL("https://falaq-bilal.github.io/Profile_Page_Web/");},
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
                
        
                 Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("assets/Sign_Up.jpg"),
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
                            "Sign Up Screen",
                            style: textTheme.displayMedium!.copyWith(
                              color: Themes.white,
                            ),
                          ),
                          const SizedBox(height: 15),
                          OutlinedButton(
                            onPressed: () {_launchURL("https://falaq-bilal.github.io/Sign_Up_Page_Web/");},
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

                 Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("assets/group_screen.jpg"),
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
                          Center(
                            child: Text(
                              "Group Screen",
                              style: textTheme.displayMedium!.copyWith(
                                color: Themes.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          OutlinedButton(
                            onPressed: () {_launchURL("https://falaq-bilal.github.io/Web_Group_Screen/");},
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
                
                
        
                 
                 
              ],
            ),
          ]  
        ),
      )
    );
  }
}
