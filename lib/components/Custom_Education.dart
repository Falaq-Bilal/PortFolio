import 'package:flutter/material.dart';
import 'package:portfolio/utils/Themes.dart';

class CustomEducation extends StatelessWidget {
  const CustomEducation({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width < 600;
    bool isTablet = size.width < 1024;
    bool isDesktop = size.width > 1024;

    final textTheme = Theme.of(context).textTheme; // shortcut

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Section Title
        Text(
          "Education",
          style: textTheme.displayLarge!, 
        ),
        SizedBox(height: 5),
        Container(height: 2, width: 150, color: Themes.white),
        SizedBox(height: 15),

        // ===== Conditional Rendering =====
        if (isMobile) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.school, color: Themes.white),
                SizedBox(width: 10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BS in Computer Science",
                        style: textTheme.displayMedium!, // heading
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Lahore College For Women University (2023 - 2027)",
                        style: textTheme.bodyMedium!, // body
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.school, color: Themes.white),
                SizedBox(width: 10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Intermediate in Computer Science",
                        style: textTheme.displayMedium!,
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Concordia Colleges (2021 - 2023)",
                        style: textTheme.bodyMedium!,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.school, color: Themes.white),
                SizedBox(width: 10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Matriculation in Computer Science",
                        style: textTheme.displayMedium!,
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Unique Group of Institutions (2019 - 2021)",
                        style: textTheme.bodyMedium!,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ] else ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Timeline (left side)
              Column(
                children: [
                  Container(width: 2, height: 50, color: Themes.white),
                  Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Themes.white,
                    ),
                  ),
                  Container(width: 2, height: 50, color: Themes.white),
                  Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Themes.white,
                    ),
                  ),
                  Container(width: 2, height: 50, color: Themes.white),
                  Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Themes.white,
                    ),
                  ),
                  Container(width: 2, height: 50, color: Themes.white,)
                ],
              ),
              const SizedBox(width: 20),

              Expanded(
                flex: isDesktop ? 2 : 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.school, color: Themes.white, size: 26),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("BS in Computer Science",
                                style: textTheme.displayMedium!),
                            Text(
                              "Lahore College for Women University (2023 - 2027)",
                              style: textTheme.bodyMedium!,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        Icon(Icons.school, color: Themes.white, size: 26),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Intermediate in Computer Science",
                                style: textTheme.displayMedium!),
                            Text("Concordia Colleges (2021 - 2023)",
                                style: textTheme.bodyMedium!),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        Icon(Icons.school, color: Themes.white, size: 26),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Matriculation in Computer Science",
                                style: textTheme.displayMedium!),
                            Text("Unique Group of Institutions (2019 - 2021)",
                                style: textTheme.bodyMedium!),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
