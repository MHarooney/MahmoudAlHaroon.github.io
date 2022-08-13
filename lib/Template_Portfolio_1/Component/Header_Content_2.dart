import 'dart:html';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:malharoon/Helper/OnHover.dart';
import 'package:malharoon/Helper/QubicleColor.dart';

class HeaderContent2 extends StatelessWidget {
  HeaderContent2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1300) {
          return DesktopHeaderContent2();
        } else if (constraints.maxWidth > 1200 && constraints.maxWidth < 1300) {
          return DesktopHeaderContent2();
        } else {
          return MobileHeaderContent2();
        }
      },
    );
  }
}

class DesktopHeaderContent2 extends StatelessWidget {
  @override
  double top;
  double left;
  double factor;
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 388.0, left: 300.0, right: 00.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: [
                Text(
                  "01. ",
                  style: TextStyle(
                      fontFamily: "Mono",
                      color: QubicleColors.secondColorP1,
                      fontSize: 20.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "About Me",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: 0.5,
                  width: 220.0,
                  color: QubicleColors.fontColorGray.withOpacity(0.4),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 450.0,
                    child: Column(
                      children: [
                        Text(
                          "Hello! My name is Mahmoud and i enjoy creating things that live on the internet. My interest in mobile app development started back in 2014 when i decided to try create awesome mobile application.",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 17.0,
                              fontWeight: FontWeight.w200,
                              wordSpacing: 2.0,
                              height: 1.5,
                              color: QubicleColors.fontColorGray),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Fast-forward to today, and I've had the privilege of working at an qubicle tech agency, a start-up a huge corporation. My main focus to create awesome mobile application with design and powerfull application.",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 17.0,
                              fontWeight: FontWeight.w200,
                              wordSpacing: 2.0,
                              height: 1.5,
                              color: QubicleColors.fontColorGray),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "I build",
                              style: TextStyle(
                                  fontFamily: "Mono",
                                  color: QubicleColors.fontColorGray,
                                  fontSize: 15.0),
                            ),
                            SizedBox(
                              width: 14.0,
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText("awesome mobile application",
                                    textStyle: TextStyle(
                                        fontFamily: "Mono",
                                        color: QubicleColors.secondColorP1,
                                        fontSize: 16.0),
                                    speed: Duration(milliseconds: 70)),
                                TyperAnimatedText("awesome UI/UX design",
                                    textStyle: TextStyle(
                                        fontFamily: "Mono",
                                        color: QubicleColors.secondColorP1,
                                        fontSize: 16.0),
                                    speed: Duration(milliseconds: 70)),
                                TyperAnimatedText("awesome website",
                                    textStyle: TextStyle(
                                        fontFamily: "Mono",
                                        color: QubicleColors.secondColorP1,
                                        fontSize: 16.0),
                                    speed: Duration(milliseconds: 70)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18.0,
                        ),
                        Text(
                          "Here are the technologies, programming languages, framework outs, and tools I've been working with recently :",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 17.0,
                              fontWeight: FontWeight.w200,
                              wordSpacing: 2.0,
                              height: 1.5,
                              color: QubicleColors.fontColorGray),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Flutter",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Firebase",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Java",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Python",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Python",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Design UI/UX",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Agile",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "GIT",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 90.0,
                ),
                Stack(
                  children: [
                    OnHover(builder: (isHovered) {
                      return PhysicalModel(
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0, top: 25.0),
                          child: Container(
                            height: 350.0,
                            width: 350.0,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                border: Border.all(
                                    color: QubicleColors.secondColorP1,
                                    width: 2.0)),
                          ),
                        ),
                      );
                    }),
                    OnHover(builder: (isHovered) {
                      final colorFont = isHovered
                          ? Colors.white
                          : QubicleColors.secondColorP1;
                      final colorBackground = isHovered
                          ? Colors.transparent
                          : QubicleColors.secondColorP1.withOpacity(0.5);
                      final colorBox = isHovered
                          ? Colors.transparent
                          : QubicleColors.secondColorP1;
                      return PhysicalModel(
                        color: Colors.transparent,
                        child: Container(
                          height: 350.0,
                          width: 350.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/template1/pp3.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.white),
                          child: Container(
                            height: 350.0,
                            width: 350.0,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                color: colorBackground),
                          ),
                        ),
                      );
                    }),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileHeaderContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 198.0, left: 50.0, right: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              children: [
                Text(
                  "01. ",
                  style: TextStyle(
                      fontFamily: "Mono",
                      color: QubicleColors.secondColorP1,
                      fontSize: 17.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "About Me",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: 0.5,
                  width: _width / 5,
                  color: QubicleColors.fontColorGray.withOpacity(0.4),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: _width / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Hello! My name is Mahmoud and i enjoy creating things that live on the internet. My interest in mobile app development started back in 2012 when i decided to try create awesome mobile application.",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 15.0,
                              fontWeight: FontWeight.w200,
                              wordSpacing: 2.0,
                              height: 1.5,
                              color: QubicleColors.fontColorGray),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Fast-forward to today, and I've had the privilege of working at an qubicle tech agency, a start-up a huge corporation. My main focus to create awesome mobile application with design and powerfull application.",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 15.0,
                              fontWeight: FontWeight.w200,
                              wordSpacing: 2.0,
                              height: 1.5,
                              color: QubicleColors.fontColorGray),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Text(
                              "I build",
                              style: TextStyle(
                                  fontFamily: "Mono",
                                  color: QubicleColors.fontColorGray,
                                  fontSize: 15.0),
                            ),
                            SizedBox(
                              width: 14.0,
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText("awesome mobile application",
                                    textStyle: TextStyle(
                                        fontFamily: "Mono",
                                        color: QubicleColors.secondColorP1,
                                        fontSize: 15.0),
                                    speed: Duration(milliseconds: 70)),
                                TyperAnimatedText("awesome UI/UX design",
                                    textStyle: TextStyle(
                                        fontFamily: "Mono",
                                        color: QubicleColors.secondColorP1,
                                        fontSize: 15.0),
                                    speed: Duration(milliseconds: 70)),
                                TyperAnimatedText("awesome website",
                                    textStyle: TextStyle(
                                        fontFamily: "Mono",
                                        color: QubicleColors.secondColorP1,
                                        fontSize: 15.0),
                                    speed: Duration(milliseconds: 70)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18.0,
                        ),
                        Text(
                          "Here are the technologies, programming languages, framework outs, and tools I've been working with recently :",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 15.0,
                              fontWeight: FontWeight.w200,
                              wordSpacing: 2.0,
                              height: 1.5,
                              color: QubicleColors.fontColorGray),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Flutter",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Firebase",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Kotlin",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Git",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Java",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Android Studio",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Python",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Agile",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Dart",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: QubicleColors.secondColorP1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Design UI/UX",
                                    style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2.0,
                                        height: 1.5,
                                        color: QubicleColors.fontColorGray),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60.0,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 90.0,
                ),
                Stack(
                  children: [
                    OnHover(builder: (isHovered) {
                      return PhysicalModel(
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0, top: 25.0),
                          child: Container(
                            height: 300.0,
                            width: 300.0,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                border: Border.all(
                                    color: QubicleColors.secondColorP1,
                                    width: 2.0)),
                          ),
                        ),
                      );
                    }),
                    OnHover(builder: (isHovered) {
                      final colorFont = isHovered
                          ? Colors.white
                          : QubicleColors.secondColorP1;
                      final colorBackground = isHovered
                          ? Colors.transparent
                          : QubicleColors.secondColorP1.withOpacity(0.5);
                      final colorBox = isHovered
                          ? Colors.transparent
                          : QubicleColors.secondColorP1;
                      return PhysicalModel(
                        color: Colors.transparent,
                        child: Container(
                          height: 300.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/template1/pp3.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.white),
                          child: Container(
                            height: 300.0,
                            width: 300.0,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                color: colorBackground),
                          ),
                        ),
                      );
                    }),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
