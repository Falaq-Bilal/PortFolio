import 'package:flutter/material.dart';
import 'package:portfolio/utils/Themes.dart';

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
      onTap: () {
        Navigator.pushNamed(context, '/home');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
        child: Text(
          "Home",
          style: textTheme.bodyLarge!
              .copyWith(fontSize: isTablet ? 14 : 16),
        ),
      ),
    ),
    const SizedBox(width: 15),
    InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/about');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
        child: Text(
          "About Me",
          style: textTheme.bodyLarge!
              .copyWith(fontSize: isTablet ? 14 : 16),
        ),
      ),
    ),
    const SizedBox(width: 15),
    InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/education');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
        child: Text(
          "Education",
          style: textTheme.bodyLarge!
              .copyWith(fontSize: isTablet ? 14 : 16),
        ),
      ),
    ),
    const SizedBox(width: 15),
    InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/projects');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
        child: Text(
          "Projects",
          style: textTheme.bodyLarge!
              .copyWith(fontSize: isTablet ? 14 : 16),
        ),
      ),
    ),
    const SizedBox(width: 15),
    InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/contact');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
        child: Text(
          "Contact Us",
          style: textTheme.bodyLarge!
              .copyWith(fontSize: isTablet ? 14 : 16),
        ),
      ),
    ),
    const SizedBox(width: 20),
  ],
)

            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

// ============ CONTENT WALA PART =============

class HeaderContent extends StatelessWidget {
  const HeaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isMobile = size.width < 600;
    bool isDesktop = size.width >= 1000;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1686074441885-ef5b67d89799?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fG5hdnklMjBibHVlfGVufDB8fDB8fHww") , fit: BoxFit.cover)
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: isMobile
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  const CircleAvatar(
                    radius: 120,
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
                       
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                  const CircleAvatar(
                    radius: 120,
                    backgroundImage: AssetImage("assets/Falaq.jpg"),
                  ),
                ],
              ),
      ),
    );
  }
}
