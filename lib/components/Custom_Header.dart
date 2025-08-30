import 'package:flutter/material.dart';
import 'package:portfolio/utils/Themes.dart';
import 'dart:html' as html; // ✅ Flutter Web ke liye



class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    bool isMobile = size.width < 600;
    bool isTablet = size.width >= 600 && size.width < 1000;
    bool isDesktop = size.width >= 1000;

    final textTheme = Theme.of(context).textTheme;

    return AppBar(
      iconTheme: const IconThemeData(color: Themes.white),
      backgroundColor: Themes.navy,
      elevation: 0,
      title: Text("Falaq Bilal", style: textTheme.displayMedium),
      centerTitle: false,
      actions: isDesktop || isTablet
          ? [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/home'),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("Home", style: textTheme.bodyLarge),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/about'),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("About Me", style: textTheme.bodyLarge),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/education'),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("Education", style: textTheme.bodyLarge),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/projects'),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("Projects", style: textTheme.bodyLarge),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/contact'),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("Contact Us", style: textTheme.bodyLarge),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

// ==================== HEADER CONTENT (Body Section) ====================

class HeaderContent extends StatelessWidget {
  const HeaderContent({super.key});

  void _openCV() {
    // ✅ Web par PDF nayi tab me open hoga
    html.window.open('assets/Falaq_Bilal_CV.pdf', "_blank");
  }

  void _showContactForm(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isMobile = size.width < 600;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: SizedBox(
            width: isMobile ? size.width * 0.9 : 400,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Contact Me",
                    style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 20),

                // Name Field
                TextField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // Email Field
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // Message Field
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    labelText: "Message",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Submit Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // close dialog
                  },
                  child: const Text("Send Message"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isMobile = size.width < 600;
    bool isDesktop = size.width >= 1000;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/Falaq.jpg"),
                ),
                const SizedBox(height: 20),
                Text("Hello.", style: textTheme.displayMedium),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 2, width: 40, color: Themes.white),
                    const SizedBox(width: 10),
                    Text("I'm Falaq", style: textTheme.bodyLarge),
                  ],
                ),
                const SizedBox(height: 8),
                Text("Flutter Developer", style: textTheme.displayMedium),
                const SizedBox(height: 20),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 10,
                  children: [
                    ElevatedButton(
                      onPressed: () => _showContactForm(context),
                      child: const Text("Got a project?"),
                    ),
                    ElevatedButton(
                      onPressed: _openCV,
                      child: const Text("My Resume"),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: isDesktop ? 2 : 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      Text("Hello.", style: textTheme.displayMedium),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(height: 2, width: 70, color: Themes.white),
                          const SizedBox(width: 10),
                          Text("I'm Falaq", style: textTheme.bodyLarge),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text("Flutter Developer", style: textTheme.displayMedium),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () => _showContactForm(context),
                            child: const Text("Got a project?"),
                          ),
                          const SizedBox(width: 10),
                          OutlinedButton(
                            onPressed: _openCV,
                            child: const Text("My Resume"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/Falaq.jpg"),
                ),
              ],
            ),
    );
  }
}
