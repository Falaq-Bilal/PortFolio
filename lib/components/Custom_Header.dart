import 'package:flutter/material.dart';
import 'package:portfolio/utils/Themes.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    bool isMobile = size.width < 600;
    bool isTablet = size.width >= 600 && size.width < 1000;
    bool isDesktop = size.width >= 1000;

    final textTheme = Theme.of(context).textTheme; // shortcut

    return Container(
      padding: const EdgeInsets.all(20),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Falaq Bilal",
                  style: textTheme.displayMedium!, // name as heading
                ),
                const SizedBox(height: 30),

                // IMAGE
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/profile.jpg"),
                ),

                const SizedBox(height: 20),

                // TEXT CONTENT
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Hello.", style: textTheme.displayMedium!),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(height: 2, width: 40, color: Themes.white),
                        const SizedBox(width: 10),
                        Text("I'm Falaq", style: textTheme.bodyLarge!),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text("Flutter Developer", style: textTheme.displayMedium!),
                    const SizedBox(height: 20),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 10,
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Got a project?")),
                        OutlinedButton(
                            onPressed: () {}, child: const Text("My Resume")),
                      ],
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
                      // Menu bar
                      Row(
                        children: [
                          Text("Falaq Bilal", style: textTheme.displayMedium!),
                          const Spacer(),
                          if (isDesktop) ...[
                            Text("Home", style: textTheme.bodyLarge!),
                            const SizedBox(width: 15),
                            Text("About", style: textTheme.bodyLarge!),
                            const SizedBox(width: 15),
                            Text("Projects", style: textTheme.bodyLarge!),
                            const SizedBox(width: 15),
                            Text("Contact Us", style: textTheme.bodyLarge!),
                          ]
                        ],
                      ),

                      const SizedBox(height: 50),

                      // Hello text
                      Text("Hello.", style: textTheme.displayMedium!),
                      const SizedBox(height: 8),

                      Row(
                        children: [
                          Container(height: 2, width: 70, color: Themes.white),
                          const SizedBox(width: 10),
                          Text("I'm Falaq", style: textTheme.bodyLarge!),
                        ],
                      ),
                      const SizedBox(height: 8),

                      Text("Flutter Developer", style: textTheme.displayMedium!),
                      const SizedBox(height: 20),

                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: const Text("Got a project?"), ),
                          const SizedBox(width: 10),
                          OutlinedButton(
                              onPressed: () {}, child: const Text("My Resume")),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 30),

                // ===== RIGHT SIDE (Image) =====
                const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/profile.jpg"),
                ),
              ],
            ),
    );
  }
}
