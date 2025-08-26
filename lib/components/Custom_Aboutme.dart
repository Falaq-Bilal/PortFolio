import 'package:flutter/material.dart';
import 'package:portfolio/utils/Themes.dart';

class CustomAboutme extends StatelessWidget {
  const CustomAboutme({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width < 700;

    final textTheme = Theme.of(context).textTheme; // shortcut

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Skills
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.design_services,
                            color: Themes.white, size: 20),
                        SizedBox(width: 10),
                        Text(
                          "UI/UX Design",
                          style: textTheme.bodyLarge!, // body text style
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.developer_board_sharp,
                            color: Themes.white, size: 20),
                        SizedBox(width: 10),
                        Text(
                          "App Development",
                          style: textTheme.bodyLarge!,
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                // About Me
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About Me",
                      style: textTheme.displayMedium!, // headline style
                    ),
                    SizedBox(height: 3,),

                    Container(
                      height: 2,
                      width: 140,
                      color: Themes.white,
                    ),
                    SizedBox(height: 15),
                    Text(
                      "I'm Falaq Bilal, a passionate Flutter developer with a love for creating clean UI and efficient mobile applications. "
                      "I enjoy solving real-world problems through design and code.",
                      style: textTheme.bodyLarge!, // body text style
                    ),

                    SizedBox(height: 20),

                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 20,
                      runSpacing: 15,
                      children: [
                        Column(
                          children: [
                            Text("20+",
                                style: textTheme.displayMedium!), // stat number
                            SizedBox(height: 5),
                            Text("Completed Projects",
                                style: textTheme.bodyMedium!), // stat label
                          ],
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [
                            Text("90%", style: textTheme.displayMedium!),
                            SizedBox(height: 5),
                            Text("Client Satisfaction",
                                style: textTheme.bodyMedium!),
                          ],
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [
                            Text("1+", style: textTheme.displayMedium!),
                            SizedBox(height: 5),
                            Text("Year of experience",
                                style: textTheme.bodyMedium!),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // LEFT SIDE → Skills
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.design_services,
                              color: Themes.white, size: 30),
                          SizedBox(width: 10),
                          Text(
                            "UI/UX Design",
                            style: textTheme.bodyLarge!,
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Icon(Icons.developer_board_sharp,
                              color: Themes.white, size: 30),
                          SizedBox(width: 10),
                          Text(
                            "App Development",
                            style: textTheme.bodyLarge!,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 40),

                // RIGHT SIDE → About Me
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Me",
                        style: textTheme.displayMedium!,
                      ),
                      SizedBox(height: 3,),

                      Container(
                        height: 2,
                        width: 140,
                        color: Themes.white,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "I'm Falaq Bilal, a passionate Flutter developer with a love for creating clean UI and efficient mobile applications. "
                        "I enjoy solving real-world problems through design and code.",
                        style: textTheme.bodyLarge!,
                      ),

                      SizedBox(height: 15),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("20+", style: textTheme.displayMedium!),
                              SizedBox(height: 5),
                              Text("Completed Projects",
                                  style: textTheme.bodyMedium!),
                            ],
                          ),
                          SizedBox(width: 25),
                          Column(
                            children: [
                              Text("90%", style: textTheme.displayMedium!),
                              SizedBox(height: 5),
                              Text("Client Satisfaction",
                                  style: textTheme.bodyMedium!),
                            ],
                          ),
                          SizedBox(width: 25),
                          Column(
                            children: [
                              Text("1+", style: textTheme.displayMedium!),
                              SizedBox(height: 5),
                              Text("Year of experience",
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
    );
  }
}
