import 'dart:html';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:malharoon/Helper/QubicleColor.dart';

class HeaderContent3 extends StatelessWidget {
  HeaderContent3({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHeaderContent3();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderContent3();
        } else {
          return MobileHeaderContent3();
        }
      },
    );
  }
}

Widget _worked(String desc, company, date) {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50.0,
        ),
        Container(
          width: 500.0,
          // height: 250,
          child: Text(
            desc,
            // maxLines: 2,
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 17.0,
                fontWeight: FontWeight.w200,
                wordSpacing: 2.0,
                // overflow: TextOverflow.ellipsis,
                height: 1.5,
                color: QubicleColors.fontColorGray),
            textAlign: TextAlign.justify,
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          company,
          style: TextStyle(
              fontFamily: "Sofia",
              fontSize: 17.0,
              fontWeight: FontWeight.w500,
              wordSpacing: 2.0,
              height: 1.5,
              color: QubicleColors.secondColorP1),
        ),
        SizedBox(
          height: 9.0,
        ),
        Text(
          date,
          style: TextStyle(
              fontFamily: "Sofia",
              fontSize: 17.0,
              fontWeight: FontWeight.w500,
              wordSpacing: 2.0,
              height: 1.5,
              color: QubicleColors.fontColorWhite),
        )
      ],
    ),
  );
}

class DesktopHeaderContent3 extends StatelessWidget {
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
                  "02. ",
                  style: TextStyle(
                      fontFamily: "Mono",
                      color: QubicleColors.secondColorP1,
                      fontSize: 20.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Where I've Worked",
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
                  width: _width / 8,
                  color: QubicleColors.fontColorGray.withOpacity(0.4),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0, top: 20.0),
              child: Container(
                  height: 320.0,
                  width: double.infinity,
                  child: Carousel(
                    images: [
                      _worked(
                          "Working as product manager on Learning Management System (LMS) project to different companies.\n- Responsibilities :- \nProduct Exploring: \n \u2022 Understanding the overall market, competitors and open source technologies. \n \u2022 Work closely with stakeholders (such as customers, business development and the" +
                      "open source community) to understand needs and priorities. \n \u2022 Translate market and stakeholder "
                          " needs into product requirements and definitions. \n " +
                          "\u2022 Translate market and stakeholder needs into product requirements and definitions." +
                          "Translate market and stakeholder needs into product requirements and definitions. \n \u2022" +
                          "Collaborate with UX and Eng on feature ideas and prototypes to bring potential."
                              "\n - Product Development:- \n \u2022 Collaborate with stakeholders to guide feature development and prioritisation."
                              "\n \u2022 Translate user requirements into executable feature work-items with engineering."
                              "\n \u2022 Be the \"voice of the customer\" during specification and development stages."
                              "\n \u2022 Influencing and collaborating in open source while balancing commercial product development."
                              "\n - Product Success:- "
                              "\n \u2022 Able to communicate business value of product capabilities to sales."
                              "\n \u2022 Act as a product champion externally and internally in support of sales channels."
                              "\n \u2022 Track and report key metrics to drive future product developments.",
                          "Innovito",
                          "December 2022"),
                      _worked(
                          "\u2022 Responsible for solving and debugging issues in both Flutter and Android.\n "
                              "\u2022 Responsible for adding new features in Flutter and Android.",
                          "Appgain",
                          "October 2021"),
                      _worked(
                          "\u2022 Responsible for creating Android app measures the radio network performance and signal strength in 2G,3G,4G and 5G.\n"
                              "\u2022 Responsible to create a data-base and save all the records for the users in the data-base also can export it to excel.\n"
                              "\u2022 Responsible for Creating design, creating database using firebase, and responsible for the front-end using flutter also responsible for creating the plugin.",
                          "Air Force",
                          "December 2020"),
                      _worked(
                          "\u2022 Responsible for creating end to end, maintaining and adding more features for a real-state application using Java and REST API JSON Using FireBase.",
                          "Aradi Online",
                          "February 2021"),
                      _worked(
                          "\u2022 Responsible for innovating and simplify a Crypto Currency mobile app with the front end team as a Flutter developer.",
                          "Bots by RevenYOU",
                          "September 2020"),
                      _worked(
                          "- Datafilling part:- \n"
                              "\u2022 Responsible for site datafilling. \n"
                              "\u2022 Responsible for extract OSS configuration for Huawei platforms (2G/3G/4G). \n"
                              "\u2022 Responsible for create script for defined rules. \n"
                              "\u2022 Responsible for create KPI reports. \n"
                              "\u2022 Responsible for running scripts in Huawei system in defined scope. \n"
                              "\u2022 Responsible for developing small program to fill project requirement. \n"
                              "\u2022 Responsible for reporting process automation. \n"
                              "\u2022 Responsible for datafilling process automation. \n"
                              "- Tooling Part:- \n"
                              "\u2022 Create the Enviroment, modules and language to work with. \n"
                              "\u2022 Understanding the requirments to chose the tools and Inputs ,create a design and data Structure for tool. \n"
                              "\u2022 Create a database for all this inputs to start vizualize and auto audit on it, using Python programming language, and sql-server express data-base, some mudules like pandas, openpy, os, sqlAlchemy, numpy and Dash Plotly frame workout to create the front End with it and combine it with the queries and pandas function with the dash plot frame workout to be the final out some thing like dash board, have charts and graphs for the related radio frequency KPI...etc \n"
                              "\u2022 Resposnsible for creating a tool that create a Check-neighbour and create a scripts the add neighbours based on the missing relations. \n"
                              "- Used environments, frame-workout, languages and libraries:-\n"
                              "\u2022 PyCharm IDE or use (Anaconda Enviroment).\n"
                              "\u2022 Python programming language.\n"
                              "\u2022 Python language.\n"
                              "\u2022 PyCharm IDE or use (Anaconda Enviroment).\n"
                              "\u2022 Pandas.\n"
                              "\u2022 sqlAlchemy.\n"
                              "\u2022 Dash Plotly Frame workout.\n"
                              "\u2022 Numpy.\n",
                          "Huawei Netherlands",
                          "October 2019"),
                    ],
                    dotSize: 5.0,
                    dotIncreasedColor: QubicleColors.secondColorP1,
                    dotIncreaseSize: 2.0,
                    dotSpacing: 20.0,
                    dotColor: QubicleColors.fontColorGray,
                    indicatorBgPadding: 15.0,
                    autoplay: false,
                    dotHorizontalPadding: 340.0,
                    dotBgColor: Colors.transparent,
                    borderRadius: true,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileHeaderContent3 extends StatelessWidget {
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
                  "02. ",
                  style: TextStyle(
                      fontFamily: "Mono",
                      color: QubicleColors.secondColorP1,
                      fontSize: 17.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Where I've Worked",
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
                  width: _width / 15,
                  color: QubicleColors.fontColorGray.withOpacity(0.4),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Container(
                  height: 450.0,
                  width: double.infinity,
                  child: Carousel(
                    images: [
                      _worked(
                          "Working as product manager on Learning Management System (LMS) project to different companies.\n- Responsibilities :- \nProduct Exploring: \n \u2022 Understanding the overall market, competitors and open source technologies. \n \u2022 Work closely with stakeholders (such as customers, business development and the" +
                              "open source community) to understand needs and priorities. \n \u2022 Translate market and stakeholder "
                                  " needs into product requirements and definitions. \n " +
                              "\u2022 Translate market and stakeholder needs into product requirements and definitions." +
                              "Translate market and stakeholder needs into product requirements and definitions. \n \u2022" +
                              "Collaborate with UX and Eng on feature ideas and prototypes to bring potential."
                                  "\n - Product Development:- \n \u2022 Collaborate with stakeholders to guide feature development and prioritisation."
                                  "\n \u2022 Translate user requirements into executable feature work-items with engineering."
                                  "\n \u2022 Be the \"voice of the customer\" during specification and development stages."
                                  "\n \u2022 Influencing and collaborating in open source while balancing commercial product development."
                                  "\n - Product Success:- "
                                  "\n \u2022 Able to communicate business value of product capabilities to sales."
                                  "\n \u2022 Act as a product champion externally and internally in support of sales channels."
                                  "\n \u2022 Track and report key metrics to drive future product developments.",
                          "Innovito",
                          "December 2022"),
                      _worked(
                          "\u2022 Responsible for solving and debugging issues in both Flutter and Android.\n "
                              "\u2022 Responsible for adding new features in Flutter and Android.",
                          "Appgain",
                          "October 2021"),
                      _worked(
                          "\u2022 Responsible for creating Android app measures the radio network performance and signal strength in 2G,3G,4G and 5G.\n"
                              "\u2022 Responsible to create a data-base and save all the records for the users in the data-base also can export it to excel.\n"
                              "\u2022 Responsible for Creating design, creating database using firebase, and responsible for the front-end using flutter also responsible for creating the plugin.",
                          "Air Force",
                          "December 2020"),
                      _worked(
                          "\u2022 Responsible for creating end to end, maintaining and adding more features for a real-state application using Java and REST API JSON Using FireBase.",
                          "Aradi Online",
                          "February 2021"),
                      _worked(
                          "\u2022 Responsible for innovating and simplify a Crypto Currency mobile app with the front end team as a Flutter developer.",
                          "Bots by RevenYOU",
                          "September 2020"),
                      _worked(
                          "- Datafilling part:- \n"
                              "\u2022 Responsible for site datafilling. \n"
                              "\u2022 Responsible for extract OSS configuration for Huawei platforms (2G/3G/4G). \n"
                              "\u2022 Responsible for create script for defined rules. \n"
                              "\u2022 Responsible for create KPI reports. \n"
                              "\u2022 Responsible for running scripts in Huawei system in defined scope. \n"
                              "\u2022 Responsible for developing small program to fill project requirement. \n"
                              "\u2022 Responsible for reporting process automation. \n"
                              "\u2022 Responsible for datafilling process automation. \n"
                              "- Tooling Part:- \n"
                              "\u2022 Create the Enviroment, modules and language to work with. \n"
                              "\u2022 Understanding the requirments to chose the tools and Inputs ,create a design and data Structure for tool. \n"
                              "\u2022 Create a database for all this inputs to start vizualize and auto audit on it, using Python programming language, and sql-server express data-base, some mudules like pandas, openpy, os, sqlAlchemy, numpy and Dash Plotly frame workout to create the front End with it and combine it with the queries and pandas function with the dash plot frame workout to be the final out some thing like dash board, have charts and graphs for the related radio frequency KPI...etc \n"
                              "\u2022 Resposnsible for creating a tool that create a Check-neighbour and create a scripts the add neighbours based on the missing relations. \n"
                              "- Used environments, frame-workout, languages and libraries:-\n"
                              "\u2022 PyCharm IDE or use (Anaconda Enviroment).\n"
                              "\u2022 Python programming language.\n"
                              "\u2022 Python language.\n"
                              "\u2022 PyCharm IDE or use (Anaconda Enviroment).\n"
                              "\u2022 Pandas.\n"
                              "\u2022 sqlAlchemy.\n"
                              "\u2022 Dash Plotly Frame workout.\n"
                              "\u2022 Numpy.\n",
                          "Huawei Netherlands",
                          "October 2019"),
                    ],
                    dotSize: 5.0,
                    dotIncreasedColor: QubicleColors.secondColorP1,
                    dotIncreaseSize: 2.0,
                    dotSpacing: 20.0,
                    dotColor: QubicleColors.fontColorGray,
                    indicatorBgPadding: 15.0,
                    autoplay: false,
                    dotHorizontalPadding: 340.0,
                    dotBgColor: Colors.transparent,
                    borderRadius: true,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
