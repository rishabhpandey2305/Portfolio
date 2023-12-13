import 'package:flutter/material.dart';
import 'package:portfolio/presentation/resources/res.dart';
import 'package:portfolio/presentation/screens/widgets/social_button.dart';
import 'package:portfolio/presentation/screens/responsive_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ReponsiveLayout(
          desktopBody: _desktop(context),
          mobileBody: _mobile(context),
        ),
      ],
    );
  }

  Widget _desktop(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: AspectRatio(
            aspectRatio: 1,
            child: Column(
              children: [
                Container(
                  width: 240,
                  height: 250,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(assets.profileimage),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Rishabh pandey",
                  style: styles.developerName,
                ),
                Text(
                  "Mobile App Developer",
                  style: styles.shortBio,
                ),
                Column(
                  children: [
                    SocialBtn(
                        url: "https://github.com/rishabhpandey2305",
                        asset: assets.githubSVG),
                    SocialBtn(
                        url:
                            "https://www.linkedin.com/in/rishabh-pandey-995378231/",
                        asset: assets.linkedinSVG),
                    SocialBtn(
                        url:
                            "https://instagram.com/rishabh_pandey_2305?igshid=MTNiYzNiMzkwZA==",
                        asset: assets.instagramSVG),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: 600,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Namaste 🙏",
                    style: styles.pageHeading,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "I am currently pursuing a Bachelor's in Information Technology with a focus on Flutter development. I am seeking a role to grow, learn from an experienced team, and apply project experience successfully executed.",
                    style: styles.regularText,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Projects",
                          style: styles.shortBio,
                        ),
                        Text(
                          "Civic Problem Registration System",
                          style: styles.regularText,
                        ),
                        Text(
                          "I Built a responsive Android application using Node.js, Flutter, and MongoDB to improve the civic registration system",
                          style: styles.description,
                        ),
                        Text(
                          "To Represent in New India Vibrant Hackathon 2023 as a solution for the given problem.",
                          style: styles.description,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Achievements",
                          style: styles.shortBio,
                        ),
                        Text(
                          "Qualified for SSIP New India Vibrant Hackathon Finale",
                          style: styles.regularText,
                        ),
                        Text(
                          "Working as a T&P Co-ordinator in MBIT",
                          style: styles.regularText,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _mobile(BuildContext context) {
    return _content(context, isMobile: true);
  }

  Widget _content(BuildContext context, {required bool isMobile}) {
    // initializeResources(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: AspectRatio(
              aspectRatio: 1,
              child: Column(
                children: [
                  Container(
                    width: isMobile ? 120 : 240,
                    height: isMobile ? 150 : 250,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: isMobile ? 80 : 100,
                      backgroundImage: AssetImage(assets.profileimage),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Rishabh pandey",
                    style: styles.developerName,
                  ),
                  Text(
                    "Mobile App Developer",
                    style: styles.shortBio,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialBtn(
                          url: "https://github.com/rishabhpandey2305",
                          asset: assets.githubSVG),
                      SocialBtn(
                          url:
                              "https://www.linkedin.com/in/rishabh-pandey-995378231/",
                          asset: assets.linkedinSVG),
                      SocialBtn(
                          url:
                              "https://instagram.com/rishabh_pandey_2305?igshid=MTNiYzNiMzkwZA==",
                          asset: assets.instagramSVG),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Container(
              width: isMobile ? double.infinity : 600,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Namaste 🙏",
                    style: styles.pageHeading,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "I am currently pursuing a Bachelor's in Information Technology with a focus on Flutter development. I am seeking a role to grow, learn from an experienced team, and apply project experience successfully executed.",
                    style: styles.regularText,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Projects",
                          style: styles.shortBio,
                        ),
                        Text(
                          "Civic Problem Registration System",
                          style: styles.regularText,
                        ),
                        Text(
                          "I Built a responsive Android application using Node.js, Flutter, and MongoDB to improve the civic registration system",
                          style: styles.description,
                        ),
                        Text(
                          "To Represent in New India Vibrant Hackathon 2023 as a solution for the given problem.",
                          style: styles.description,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Achievements",
                          style: styles.shortBio,
                        ),
                        Text(
                          "Qualified for SSIP New India Vibrant Hackathon Finale",
                          style: styles.regularText,
                        ),
                        Text(
                          "Working as a T&P Co-ordinator in MBIT",
                          style: styles.regularText,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
