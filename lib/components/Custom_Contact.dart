import 'package:flutter/material.dart';
import 'package:portfolio/utils/Themes.dart';

class CustomContact extends StatelessWidget {
  const CustomContact({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;

    // Responsive check
    final bool isMobile = width < 600;

    return Container(
      width: double.infinity,
  
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ===== TITLE =====
          Text("Contact Me", style: textTheme.displayMedium),
          const SizedBox(height: 8),
          Container(height: 2, width: 150, color: Themes.white),
          const SizedBox(height: 20),

          // ===== DESCRIPTION =====
          Text(
            "Have a project in mind or want to collaborate? Let's get in touch!",
            textAlign: TextAlign.center,
            style: textTheme.bodyLarge!.copyWith(
              color: Themes.white.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 40),

          // ===== CONTACT DETAILS =====
          isMobile
              ? Column(
                  children: [
                    // EMAIL
                    Column(
                      children: [
                        Icon(Icons.email, color: Themes.cyan, size: 40),
                        const SizedBox(height: 10),
                        Text("Email",
                            style: textTheme.displayMedium!
                                .copyWith(fontSize: 20)),
                        const SizedBox(height: 5),
                        Text("falaqxhk@gmail.com",
                            style: textTheme.bodyLarge!
                                .copyWith(color: Themes.white)),
                      ],
                    ),
                    const SizedBox(height: 30),

                    // PHONE
                    Column(
                      children: [
                        Icon(Icons.phone, color: Themes.cyan, size: 40),
                        const SizedBox(height: 10),
                        Text("Phone",
                            style: textTheme.displayMedium!
                                .copyWith(fontSize: 20)),
                        const SizedBox(height: 5),
                        Text("+92 324 4201252 ",
                            style: textTheme.bodyLarge!
                                .copyWith(color: Themes.white)),
                      ],
                    ),
                    const SizedBox(height: 30),

                    // LOCATION
                    Column(
                      children: [
                        Icon(Icons.location_on, color: Themes.cyan, size: 40),
                        const SizedBox(height: 10),
                        Text("Location",
                            style: textTheme.displayMedium!
                                .copyWith(fontSize: 20)),
                        const SizedBox(height: 5),
                        Text("Lahore, Pakistan",
                            style: textTheme.bodyLarge!
                                .copyWith(color: Themes.white)),
                      ],
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // EMAIL
                    Column(
                      children: [
                        Icon(Icons.email, color: Themes.cyan, size: 40),
                        const SizedBox(height: 10),
                        Text("Email",
                            style: textTheme.displayMedium!
                                .copyWith(fontSize: 20)),
                        const SizedBox(height: 5),
                        Text("falaqxhk@gmail.com",
                            style: textTheme.bodyLarge!
                                .copyWith(color: Themes.white)),
                      ],
                    ),

                    // PHONE
                    Column(
                      children: [
                        Icon(Icons.phone, color: Themes.cyan, size: 40),
                        const SizedBox(height: 10),
                        Text("Phone",
                            style: textTheme.displayMedium!
                                .copyWith(fontSize: 20)),
                        const SizedBox(height: 5),
                        Text("+92 324 4201252",
                            style: textTheme.bodyLarge!
                                .copyWith(color: Themes.white)),
                      ],
                    ),

                    // LOCATION
                    Column(
                      children: [
                        Icon(Icons.location_on, color: Themes.cyan, size: 40),
                        const SizedBox(height: 10),
                        Text("Location",
                            style: textTheme.displayMedium!
                                .copyWith(fontSize: 20)),
                        const SizedBox(height: 5),
                        Text("Lahore, Pakistan",
                            style: textTheme.bodyLarge!
                                .copyWith(color: Themes.white)),
                      ],
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
