import 'package:flutter/material.dart';
import 'package:portfolio/presentation/screens/home/home_view.dart';
  
class HOMESCREEN extends StatelessWidget {
  const HOMESCREEN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: PageView(
              scrollDirection: Axis.vertical,
              children: [
                const HomePage(), 
              ],
              ),
            )
          ],
        )
      ),
    );
  }
}
