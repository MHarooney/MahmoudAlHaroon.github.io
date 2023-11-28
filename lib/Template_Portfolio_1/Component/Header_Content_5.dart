import 'dart:html';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:malharoon/Helper/OnHover.dart';
import 'package:malharoon/Helper/QubicleColor.dart';

class HeaderContent5 extends StatelessWidget {
  HeaderContent5({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHeaderContent5();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderContent5();
        } else {
          return MobileHeaderContent5();
        }
      },
    );
  }
}

class DesktopHeaderContent5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _launchURL() async {
      final url = Uri.encodeFull(
          'mailto:mahmoud.harooney.tooling@gmail.com?subject=Your Subject&body=Hello Mahmoud');
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 328.0, left: 0.0, right: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "04. What's Next? ",
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  wordSpacing: 2.0,
                  height: 1.5,
                  color: QubicleColors.secondColorP1),
            ),
            Text(
              "Get In Touch",
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                  wordSpacing: 2.0,
                  height: 1.5,
                  color: QubicleColors.fontColorGray),
            ),
            Container(
              width: 600.0,
              child: Text(
                "Although I'm not currently looking for any new opportunities, my inbox is always open. Whether you have a question or just want to say hi, I'll try my best to get to you as soon as possible",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 2.0,
                    height: 1.5,
                    color: QubicleColors.fontColorGray),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30.0,
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
                return InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: Container(
                    height: 50.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                        color: colorBackground,
                        border: Border.all(color: colorBox, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(4.0))),
                    child: Center(
                      child: Text(
                        "Say Hello",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w500,
                            color: colorFont,
                            fontSize: 14),
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 260.0,
            ),
          ],
        ),
      ),
    );
  }
}

class MobileHeaderContent5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _launchURL() async {
      final url = Uri.encodeFull(
          'mailto:mahmoud.harooney.tooling@gmail.com?subject=Your Subject&body=Hello Mahmoud');
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 198.0, left: 30.0, right: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "04. What's Next? ",
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  wordSpacing: 2.0,
                  height: 1.5,
                  color: QubicleColors.secondColorP1),
            ),
            Text(
              "Get In Touch",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontSize: 45.0,
                  fontWeight: FontWeight.w700,
                  wordSpacing: 2.0,
                  height: 1.5,
                  color: QubicleColors.fontColorGray),
            ),
            Container(
              width: 550.0,
              child: Text(
                "Although I'm not currently looking for any new opportunities, my inbox is always open. Whether you have a question or just want to say hi, I'll try my best to get to you as soon as possible",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 2.0,
                    height: 1.5,
                    color: QubicleColors.fontColorGray),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30.0,
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
                return InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: Container(
                    height: 50.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                        color: colorBackground,
                        border: Border.all(color: colorBox, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(4.0))),
                    child: Center(
                      child: Text(
                        "Say Hello",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w500,
                            color: colorFont,
                            fontSize: 14),
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
