import 'package:flutter/material.dart';
import 'package:portfolio/presentation/resources/res.dart';
import 'package:portfolio/presentation/screens/widgets/social_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // initializeResources(context);
    return Scaffold(
        body: Container(
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AspectRatio(
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
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            flex: 9,
            child: Container(
              color: Colors.white,
              child: Column(children: []),
            ),
          )
        ],
      ),
    ));
  }
}
