import 'dart:html';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:malharoon/Helper/OnHover.dart';
import 'package:malharoon/Helper/QubicleColor.dart';

class HeaderContent4 extends StatelessWidget {
  double pixels;
  HeaderContent4({Key key, this.pixels}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1300) {
          return DesktopHeaderContent4(
            pixels: pixels,
          );
        } else if (constraints.maxWidth > 1200 && constraints.maxWidth < 1300) {
          return DesktopHeaderContent4(
            pixels: pixels,
          );
        } else {
          return MobileHeaderContent4(
            pixels: pixels,
          );
        }
      },
    );
  }
}

Widget _portoLeft(String desc, title, code, link, image) {
  return Stack(
    children: [
      OnHover(builder: (isHovered) {
        return PhysicalModel(
          color: Colors.transparent,
          child: Container(
            height: 350.0,
            width: 550.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color: QubicleColors.backgroundColor2P1,
                image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover)),
          ),
        );
      }),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Featured Project",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                wordSpacing: 2.0,
                height: 1.5,
                color: QubicleColors.secondColorP1),
          ),
          SizedBox(
            height: 3.0,
          ),
          Text(
            title,
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
                wordSpacing: 2.0,
                height: 1.5,
                color: QubicleColors.fontColorGray),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 140.0,
            width: 470.0,
            decoration: BoxDecoration(
                color: QubicleColors.backgroundColor2P1,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      color: QubicleColors.mainColorP1,
                      blurRadius: 1.0,
                      spreadRadius: 1.0),
                ]),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 6.0, bottom: 6.0),
                child: Text(
                  desc,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200,
                      wordSpacing: 2.0,
                      height: 1.5,
                      color: QubicleColors.fontColorGray),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                code,
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 2.0,
                    height: 1.5,
                    color: QubicleColors.fontColorGray),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "Android",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 2.0,
                    height: 1.5,
                    color: QubicleColors.fontColorGray),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "IOS",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 2.0,
                    height: 1.5,
                    color: QubicleColors.fontColorGray),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          InkWell(
            onTap: () async {
              final url = link;
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Icon(
              Icons.link,
              color: QubicleColors.fontColorGray,
            ),
          )
        ],
      )
    ],
  );
}

Widget _portoLeftMobile(String desc, title, code, link, image) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      OnHover(builder: (isHovered) {
        return PhysicalModel(
          color: Colors.transparent,
          child: Container(
            height: 350.0,
            width: 550.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color: QubicleColors.backgroundColor2P1,
                image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover)),
          ),
        );
      }),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 30.0,
          ),
          Text(
            "Featured Project",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                wordSpacing: 2.0,
                height: 1.5,
                color: QubicleColors.secondColorP1),
          ),
          SizedBox(
            height: 3.0,
          ),
          Text(
            title,
            textAlign: TextAlign.end,
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
                wordSpacing: 2.0,
                height: 1.5,
                color: QubicleColors.fontColorGray),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 140.0,
            width: 470.0,
            decoration: BoxDecoration(
                color: QubicleColors.backgroundColor2P1,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      color: QubicleColors.mainColorP1,
                      blurRadius: 1.0,
                      spreadRadius: 1.0),
                ]),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 6.0, bottom: 6.0),
                child: Text(
                  desc,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200,
                      wordSpacing: 2.0,
                      height: 1.5,
                      color: QubicleColors.fontColorGray),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                code,
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 2.0,
                    height: 1.5,
                    color: QubicleColors.fontColorGray),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "Android",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 2.0,
                    height: 1.5,
                    color: QubicleColors.fontColorGray),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "IOS",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 2.0,
                    height: 1.5,
                    color: QubicleColors.fontColorGray),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          InkWell(
            onTap: () async {
              final url = link;
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Icon(
              Icons.link,
              color: QubicleColors.fontColorGray,
            ),
          )
        ],
      )
    ],
  );
}

Widget _portoRightMobile(String desc, title, code, link, image) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      OnHover(builder: (isHovered) {
        return PhysicalModel(
          color: Colors.transparent,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 350.0,
              width: 550.0,
              decoration: BoxDecoration(
                  color: QubicleColors.backgroundColor2P1,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
        );
      }),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.0,
          ),
          Text(
            "Featured Project",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                wordSpacing: 2.0,
                height: 1.5,
                color: QubicleColors.secondColorP1),
          ),
          SizedBox(
            height: 3.0,
          ),
          Text(
            title,
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
                wordSpacing: 2.0,
                height: 1.5,
                color: QubicleColors.fontColorGray),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 140.0,
            width: 470.0,
            decoration: BoxDecoration(
                color: QubicleColors.backgroundColor2P1,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      color: QubicleColors.mainColorP1,
                      blurRadius: 1.0,
                      spreadRadius: 1.0),
                ]),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 6.0, bottom: 6.0),
                child: Text(
                  desc,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200,
                      wordSpacing: 2.0,
                      height: 1.5,
                      color: QubicleColors.fontColorGray),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                code,
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 2.0,
                    height: 1.5,
                    color: QubicleColors.fontColorGray),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "Android",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 2.0,
                    height: 1.5,
                    color: QubicleColors.fontColorGray),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "IOS",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 2.0,
                    height: 1.5,
                    color: QubicleColors.fontColorGray),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          InkWell(
            onTap: () async {
              final url = link;
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Icon(
              Icons.link,
              color: QubicleColors.fontColorGray,
            ),
          )
        ],
      )
    ],
  );
}

Widget _portoRight(String desc, title, code, link, image) {
  return Stack(
    children: [
      OnHover(builder: (isHovered) {
        return PhysicalModel(
          color: Colors.transparent,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 350.0,
              width: 550.0,
              decoration: BoxDecoration(
                  color: QubicleColors.backgroundColor2P1,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
        );
      }),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Featured Project",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                wordSpacing: 2.0,
                height: 1.5,
                color: QubicleColors.secondColorP1),
          ),
          SizedBox(
            height: 3.0,
          ),
          Text(
            title,
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
                wordSpacing: 2.0,
                height: 1.5,
                color: QubicleColors.fontColorGray),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 140.0,
            width: 470.0,
            decoration: BoxDecoration(
                color: QubicleColors.backgroundColor2P1,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      color: QubicleColors.mainColorP1,
                      blurRadius: 1.0,
                      spreadRadius: 1.0),
                ]),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 6.0, bottom: 6.0),
                child: Text(
                  desc,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200,
                      wordSpacing: 2.0,
                      height: 1.5,
                      color: QubicleColors.fontColorGray),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                code,
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 2.0,
                    height: 1.5,
                    color: QubicleColors.fontColorGray),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "Android",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 2.0,
                    height: 1.5,
                    color: QubicleColors.fontColorGray),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "IOS",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 2.0,
                    height: 1.5,
                    color: QubicleColors.fontColorGray),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          InkWell(
            onTap: () async {
              final url = link;
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Icon(
              Icons.link,
              color: QubicleColors.fontColorGray,
            ),
          )
        ],
      )
    ],
  );
}

class DesktopHeaderContent4 extends StatelessWidget {
  double pixels;
  DesktopHeaderContent4({this.pixels});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 328.0, left: 300.0, right: 200.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: [
                Text(
                  "03. ",
                  style: TextStyle(
                      fontFamily: "Mono",
                      color: QubicleColors.secondColorP1,
                      fontSize: 20.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Projects I've Worked In",
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
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0, top: 50.0),
              child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      AnimatedPadding(
                        duration: Duration(milliseconds: 1000),
                        padding:
                            EdgeInsets.only(left: pixels >= 1850 ? 0.0 : 200),
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: pixels >= 1850 ? 1.0 : 0.0,
                          child: _portoLeft(
                            "Mobile Donation App, pay zakat, and donate from your mobile via SMS, Credit card and Bank account. more than 13 million durham for more than 150 charitable projects and urgent cases.\n Why iKhair:• \n - Easy to donate and secure platform.",
                            "Android Native Donation IKhair",
                            "Java/Kotlin",
                            "https://play.google.com/store/apps/details?id=com.quantatil.ikhar",
                            "assets/template1/porto5.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 110.0,
                      ),
                      AnimatedPadding(
                        duration: Duration(milliseconds: 1000),
                        padding:
                            EdgeInsets.only(left: pixels >= 2400 ? 0.0 : 200),
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: pixels >= 2400 ? 1.0 : 0.0,
                          child: _portoRight(
                            "Use BOTS. For super smart automated trading. Trade better than human.",
                            "BOTS: Automated Crypto Trading",
                            "Dart",
                            "https://play.google.com/store/apps/details?id=io.revenyou.youapp",
                            "assets/template1/porto2.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 110.0,
                      ),
                      AnimatedPadding(
                        duration: Duration(milliseconds: 1000),
                        padding:
                            EdgeInsets.only(left: pixels >= 2900 ? 0.0 : 200),
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: pixels >= 2900 ? 1.0 : 0.0,
                          child: _portoLeft(
                            "vision of the association To be the first in the field of providing distinguished humanitarian services in the United Arab Emirates. Assembly message.",
                            "Donation Beet EL Kher",
                            "Java/Kotlin",
                            "https://play.google.com/store/apps/details?id=com.appgain.BeetElKhairCharity&hl=en&gl=US",
                            "assets/template1/porto3.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 110.0,
                      ),
                      AnimatedPadding(
                        duration: Duration(milliseconds: 1000),
                        padding:
                            EdgeInsets.only(left: pixels >= 3400 ? 0.0 : 200),
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: pixels >= 3400 ? 1.0 : 0.0,
                          child: _portoRight(
                            "Nabolia App Provides you with all furniture and antique pieces From Damietta. All Products are handcrafted by a unique selection of Damietta craftsmen to offer the best quality and price for the Egyptian product.\nDoor to Door delivery is available at very reasonable prices and within 10 days in Egypt\nFor Offshore delivery please send us a request to customize your package",
                            "Nabolia Furniture",
                            "Dart",
                            "https://play.google.com/store/apps/details?id=com.appgain.nabolia",
                            "assets/template1/porto4.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 110.0,
                      ),
                      AnimatedPadding(
                        duration: Duration(milliseconds: 1000),
                        padding:
                            EdgeInsets.only(left: pixels >= 3900 ? 0.0 : 200),
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: pixels >= 3900 ? 1.0 : 0.0,
                          child: _portoLeft(
                            "1st online mobile application For Swimming accessories In Egypt.",
                            "Swimming store Egypt",
                            "Dart",
                            "https://play.google.com/store/apps/details?id=com.appgain.swimmingstore",
                            "assets/template1/porto1.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 110.0,
                      ),
                      AnimatedPadding(
                        duration: Duration(milliseconds: 1000),
                        padding:
                        EdgeInsets.only(left: pixels >= 3400 ? 0.0 : 200),
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: pixels >= 3400 ? 1.0 : 0.0,
                          child: _portoRight(
                            "Telecom cell signal and Wifi network information, speed test, AirForce.",
                            "Air-Force",
                            "Dart",
                            "https://play.google.com/store/apps/details?id=live.airforce.airforces",
                            "assets/template1/air-forceb.png",
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileHeaderContent4 extends StatelessWidget {
  double pixels;
  MobileHeaderContent4({this.pixels});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 50.0, right: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                Text(
                  "03. ",
                  style: TextStyle(
                      fontFamily: "Mono",
                      color: QubicleColors.secondColorP1,
                      fontSize: 17.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Projects I've worked in",
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
                  width: _width / 8,
                  color: QubicleColors.fontColorGray.withOpacity(0.4),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
              child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      AnimatedPadding(
                        duration: Duration(milliseconds: 1000),
                        padding:
                            EdgeInsets.only(left: pixels >= 2100 ? 0.0 : 200),
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: pixels >= 2100 ? 1.0 : 0.0,
                          child: _portoLeftMobile(
                            "Mobile Donation App, pay zakat, and donate from your mobile via SMS, Credit card and Bank account. more than 13 million durham for more than 150 charitable projects and urgent cases.\n Why iKhair:• \n - Easy to donate and secure platform.",
                            "Android Native Donation IKhair",
                            "Java/Kotlin",
                            "https://play.google.com/store/apps/details?id=com.quantatil.ikhar",
                            "assets/template1/porto5.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 110.0,
                      ),
                      AnimatedPadding(
                        duration: Duration(milliseconds: 1000),
                        padding:
                            EdgeInsets.only(left: pixels >= 3000 ? 0.0 : 200),
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: pixels >= 3000 ? 1.0 : 0.0,
                          child: _portoRightMobile(
                            "Use BOTS. For super smart automated trading. Trade better than human.",
                            "BOTS: Automated Crypto Trading",
                            "Dart",
                            "https://play.google.com/store/apps/details?id=io.revenyou.youapp",
                            "assets/template1/porto2.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 110.0,
                      ),
                      AnimatedPadding(
                        duration: Duration(milliseconds: 1000),
                        padding:
                            EdgeInsets.only(left: pixels >= 3850 ? 0.0 : 200),
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: pixels >= 3850 ? 1.0 : 0.0,
                          child: _portoLeftMobile(
                            "vision of the association To be the first in the field of providing distinguished humanitarian services in the United Arab Emirates. Assembly message.",
                            "Donation - Beet ElKair",
                            "Java/Kotlin",
                            "https://play.google.com/store/apps/details?id=com.appgain.BeetElKhairCharity&hl=en&gl=US",
                            "assets/template1/porto3.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 110.0,
                      ),
                      AnimatedPadding(
                        duration: Duration(milliseconds: 1000),
                        padding:
                            EdgeInsets.only(left: pixels >= 4500.5 ? 0.0 : 200),
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: pixels >= 4500.5 ? 1.0 : 0.0,
                          child: _portoRightMobile(
                            "Nabolia App Provides you with all furniture and antique pieces From Damietta. All Products are handcrafted by a unique selection of Damietta craftsmen to offer the best quality and price for the Egyptian product.\nDoor to Door delivery is available at very reasonable prices and within 10 days in Egypt\nFor Offshore delivery please send us a request to customize your package",
                            "Nabolia Furniture",
                            "Dart",
                            "https://play.google.com/store/apps/details?id=com.appgain.nabolia",
                            "assets/template1/porto4.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 110.0,
                      ),
                      AnimatedPadding(
                        duration: Duration(milliseconds: 1000),
                        padding:
                            EdgeInsets.only(left: pixels >= 5555 ? 0.0 : 200),
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: pixels >= 5555 ? 1.0 : 0.0,
                          child: _portoLeftMobile(
                            "1st online mobile application For Swimming accessories In Egypt.",
                            "Swimming store Egypt",
                            "Dart",
                            "https://play.google.com/store/apps/details?id=com.appgain.swimmingstore",
                            "assets/template1/porto1.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 110.0,
                      ),
                      AnimatedPadding(
                        duration: Duration(milliseconds: 1000),
                        padding:
                        EdgeInsets.only(left: pixels >= 5555 ? 0.0 : 200),
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: pixels >= 5555 ? 1.0 : 0.0,
                          child: _portoLeftMobile(
                            "Telecom cell signal and Wifi network information, speed test, AirForce.",
                            "Air-Force",
                            "Dart",
                            "https://play.google.com/store/apps/details?id=live.airforce.airforces",
                            "assets/template1/air-forceb.png",
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
