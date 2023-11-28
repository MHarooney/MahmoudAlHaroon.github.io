import 'dart:html' as html;

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:malharoon/Helper/OnHover.dart';
import 'package:malharoon/Helper/QubicleColor.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HeaderContent1 extends StatelessWidget {
  HeaderContent1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHeaderContent1();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderContent1();
        } else {
          return MobileHeaderContent1();
        }
      },
    );
  }
}

class DesktopHeaderContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 158.0, left: 300.0, right: 200.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, my name is",
              style: TextStyle(
                  fontFamily: "Mono",
                  color: QubicleColors.secondColorP1,
                  fontSize: 18.0),
            ),
            AnimatedTextKit(animatedTexts: [
              TyperAnimatedText("Mahmoud Al-Haroon",
                  textStyle: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 64.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                  speed: Duration(milliseconds: 200))
            ]),
            SizedBox(
              height: 10.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 600.0,
                child: Text(
                  "10 years of experience in the Software Engineering Industry including 2 years of Software Project Management. I worked on more than 10 different projects in different countries (on-site and remote) for POS, Retail, Online-banking, E-Commerce and Mobile Radio network solutions. I manage a team of software developers (Full Stack Developer, Mobile Developer, Testers and DevOps). I am responsible for the company technical team, customer communications and solution delivery working on ELearning Management System.",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 17.0,
                      fontWeight: FontWeight.w200,
                      wordSpacing: 2.0,
                      height: 1.5,
                      color: QubicleColors.fontColorGray),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            OnHover(
              builder: (isHovered) {
                final colorFont =
                    isHovered ? Colors.white : QubicleColors.secondColorP1;
                final colorBackground = isHovered
                    ? QubicleColors.secondColorDeepP1
                    : Colors.transparent;
                final colorBox = isHovered
                    ? Colors.transparent
                    : QubicleColors.secondColorP1;
                return PhysicalModel(
                  color: Colors.transparent,
                  child: InkWell(
                    // onTap: () async {
                    //   final url =
                    //       "https://codecanyon.net/user/qubicletechagency/portfolio";
                    //   if (await canLaunch(url)) {
                    //     await launch(url);
                    //   } else {
                    //     throw 'Could not launch $url';
                    //   }
                    // },
                    child: Container(
                      height: 50.0,
                      width: 170.0,
                      decoration: BoxDecoration(
                          color: colorBackground,
                          border: Border.all(color: colorBox, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(4.0))),
                      child: Center(
                        child: TextButton(
                          onPressed: () {html.window.open(
                              'https://drive.google.com/file/d/1Kc_rq7Cb6HfyVlC199f48XuAXx1lEDNI/view?usp=sharing',
                              "pdf");},
                          child: FittedBox(
                            child: Row(
                              children: [
                                Text(
                                  "DOWNLOAD CV",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MobileHeaderContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 88.0, left: 50.0, right: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, my name is",
              style: TextStyle(
                  fontFamily: "Mono",
                  color: QubicleColors.secondColorP1,
                  fontSize: 15.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            AnimatedTextKit(animatedTexts: [
              TyperAnimatedText("Mahmoud Al-Haroon",
                  textStyle: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 52.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                  speed: Duration(milliseconds: 200))
            ]),
            SizedBox(
              height: 15.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 600.0,
                child: Text(
                  "10 years of experience in the Software Engineering Industry including 2 years of Software Project Management. I worked on more than 10 different projects in different countries (on-site and remote) for POS, Retail, Online-banking, E-Commerce and Mobile Radio network solutions. I manage a team of software developers (Full Stack Developer, Mobile Developer, Testers and DevOps). I am responsible for the company technical team, customer communications and solution delivery working on ELearning Management System.",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200,
                      wordSpacing: 2.0,
                      height: 1.5,
                      color: QubicleColors.fontColorGray),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            OnHover(
              builder: (isHovered) {
                final colorFont =
                    isHovered ? Colors.white : QubicleColors.secondColorP1;
                final colorBackground = isHovered
                    ? QubicleColors.secondColorDeepP1
                    : Colors.transparent;
                final colorBox = isHovered
                    ? Colors.transparent
                    : QubicleColors.secondColorP1;
                return PhysicalModel(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () async {
                      final url =
                          "https://codecanyon.net/user/qubicletechagency/portfolio";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Container(
                      height: 50.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                          color: colorBackground,
                          border: Border.all(color: colorBox, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(4.0))),
                      child: Center(
                        child: TextButton(
                          onPressed: () {html.window.open(
                              'https://drive.google.com/file/d/1Kc_rq7Cb6HfyVlC199f48XuAXx1lEDNI/view?usp=sharing',
                              "pdf");},
                          child: FittedBox(
                            child: Row(
                              children: [
                                Text(
                                  "DOWNLOAD CV",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
