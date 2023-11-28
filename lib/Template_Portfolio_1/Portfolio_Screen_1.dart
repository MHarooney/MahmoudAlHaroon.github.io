import 'dart:html';

import 'package:favicon/favicon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:malharoon/Helper/QubicleColor.dart';

import 'Component/Header_Contect_1.dart';
import 'Component/Header_Content_2.dart';
import 'Component/Header_Content_3.dart';
import 'Component/Header_Content_4.dart';
import 'Component/Header_Content_5.dart';
import 'Component/Navbar_Portfolio_1.dart';

class PortfolioScreen1 extends StatefulWidget {
  PortfolioScreen1({Key? key}) : super(key: key);

  @override
  _PortfolioScreen1State createState() => _PortfolioScreen1State();
}

class _PortfolioScreen1State extends State<PortfolioScreen1> {
  Color background = Color(0xFF0D192D);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1300) {
          return DekstopPortfolioScreen1();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1300) {
          return DekstopPortfolioScreen1();
        } else {
          return MobilePortfolioScreen1();
        }
      },
    );
  }
}

class DekstopPortfolioScreen1 extends StatefulWidget {
  DekstopPortfolioScreen1({Key? key}) : super(key: key);

  @override
  _DekstopPortfolioScreen1State createState() =>
      _DekstopPortfolioScreen1State();
}

class _DekstopPortfolioScreen1State extends State<DekstopPortfolioScreen1> {
  ScrollController? _controller;
  double pixels = 0.0;
  var dataKey = new GlobalKey();
  final dataKey2 = new GlobalKey();
  final dataKey3 = new GlobalKey();
  final dataKey4 = new GlobalKey();
  final dataKey5 = new GlobalKey();

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    _controller?.addListener(() {
      setState(() {
        pixels = _controller!.position.pixels;
        print(pixels);
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(() {
      // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
      _controller!.position.moveTo(dragUpdate.globalPosition.dy * 3.5);
    });
  }

  Color color = notSelected;
  FontWeight fontWeight = notSelectedFW;
  Color color2 = notSelected2;
  FontWeight fontWeight2 = notSelectedFW2;
  Color color3 = notSelected3;
  FontWeight fontWeight3 = notSelectedFW3;
  Color color4 = notSelected4;
  Color color5 = notSelected4;
  Color color6 = notSelected4;
  FontWeight fontWeight4 = notSelectedFW4;

  _launchURL() async {
    final url = Uri.encodeFull(
        'mailto:mahmoud.harooney.tooling@gmail.com?subject=Hello Mahmoud&body=Hello Mahmoud');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchGithub() async {
    final url = "https://github.com/MHarooney";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchFacebook() async {
    final url = "https://www.facebook.com/mahmoud.harooney";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchGitHub() async {
    final url = "https://github.com/MHarooney?tab=repositories";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchLinkedIn() async {
    final url = "https://www.linkedin.com/in/mahmoud-al-haroon-b9906a1a1/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchCode() async {
    final url = "https://stackoverflow.com/users/6317695/mahmoud-al-haroon";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      backgroundColor: QubicleColors.mainColorP1,
      body: Stack(
        children: [
          Container(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    //Assign the controller to my scrollable widget
                    controller: _controller,
                    child: Column(
                      children: <Widget>[
                        NavbarT1(
                          dataKey: dataKey,
                          dataKey2: dataKey2,
                          dataKey3: dataKey3,
                          dataKey4: dataKey4,
                          dataKey5: dataKey5,
                        ),
                        HeaderContent1(
                          key: dataKey,
                        ),
                        AnimatedOpacity(
                          opacity: pixels >= 420 ? 1.0 : 0.0,
                          duration: Duration(milliseconds: 500),
                          child: AnimatedPadding(
                            duration: Duration(milliseconds: 500),
                            padding: EdgeInsets.only(
                                left: pixels >= 100 ? 0.0 : 200),
                            child: HeaderContent2(
                              key: dataKey2,
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 500),
                          opacity: pixels >= 1359 ? 1.0 : 0.0,
                          child: AnimatedPadding(
                            duration: Duration(milliseconds: 500),
                            padding: EdgeInsets.only(
                                left: pixels >= 1359 ? 0.0 : 200),
                            child: HeaderContent3(
                              key: dataKey3,
                            ),
                          ),
                        ),
                        AnimatedPadding(
                          duration: Duration(milliseconds: 500),
                          padding:
                              EdgeInsets.only(left: pixels >= 2000 ? 0.0 : 200),
                          child: AnimatedOpacity(
                            duration: Duration(milliseconds: 500),
                            opacity: pixels >= 2000 ? 1.0 : 0.0,
                            child: HeaderContent4(
                              pixels: pixels,
                              key: dataKey4,
                            ),
                          ),
                        ),
                        AnimatedAlign(
                          duration: Duration(milliseconds: 500),
                          alignment: pixels >= 4400
                              ? Alignment(0.0, 1.0)
                              : Alignment(-0.2, 1.0),
                          child: AnimatedOpacity(
                            duration: Duration(milliseconds: 500),
                            opacity: pixels >= 4400 ? 1.0 : 0.0,
                            child: HeaderContent5(
                              key: dataKey5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  _launchGithub();
                                },
                                child: MouseRegion(
                                  onEnter: (values) {
                                    setState(() {
                                      color = selected;
                                      fontWeight = selectedFW;
                                    });
                                  },
                                  onExit: (values) {
                                    setState(() {
                                      color = notSelected;
                                      fontWeight = notSelectedFW;
                                    });
                                  },
                                  child: Image.asset(
                                    "assets/template1/github.png",
                                    color: color,
                                    height: 20.1,
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   height: 33.0,
                              // ),
                              // InkWell(
                              //   onTap: () {
                              //     _launchInstagram();
                              //   },
                              //   child: MouseRegion(
                              //     onEnter: (values) {
                              //       setState(() {
                              //         color2 = selected2;
                              //       });
                              //     },
                              //     onExit: (values) {
                              //       setState(() {
                              //         color2 = notSelected2;
                              //       });
                              //     },
                              //     child: Image.asset(
                              //       "assets/template1/instagram.png",
                              //       height: 20.1,
                              //       color: color2,
                              //     ),
                              //   ),
                              // ),
                              SizedBox(
                                height: 33.0,
                              ),
                              InkWell(
                                onTap: () {
                                  _launchFacebook();
                                },
                                child: MouseRegion(
                                  onEnter: (values) {
                                    setState(() {
                                      color3 = selected3;
                                    });
                                  },
                                  onExit: (values) {
                                    setState(() {
                                      color3 = notSelected3;
                                    });
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.facebook,
                                    size: 20.0,
                                    color: color3,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 33.0,
                              ),
                              InkWell(
                                onTap: () {
                                  _launchLinkedIn();
                                },
                                child: MouseRegion(
                                  onEnter: (values) {
                                    setState(() {
                                      color4 = selected4;
                                    });
                                  },
                                  onExit: (values) {
                                    setState(() {
                                      color4 = notSelected4;
                                    });
                                  },
                                  child: Image.asset(
                                    "assets/template1/linkedin.png",
                                    height: 20.1,
                                    color: color4,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 33.0,
                              ),
                              InkWell(
                                onTap: () {
                                  _launchCode();
                                },
                                child: MouseRegion(
                                  onEnter: (values) {
                                    setState(() {
                                      color5 = selected5;
                                    });
                                  },
                                  onExit: (values) {
                                    setState(() {
                                      color5 = notSelected5;
                                    });
                                  },
                                  child: Image.asset(
                                    "assets/template1/stack-overflow.png",
                                    height: 20.1,
                                    color: color5,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 33.0,
                              ),
                              Container(
                                width: 0.5,
                                height: 75.0,
                                color: QubicleColors.fontColorGray,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RotatedBox(
                                quarterTurns: 1,
                                child: InkWell(
                                  onTap: () {
                                    _launchURL();
                                  },
                                  child: MouseRegion(
                                    onEnter: (values) {
                                      setState(() {
                                        color6 = selected6;
                                        fontWeight = selectedFW;
                                      });
                                    },
                                    onExit: (values) {
                                      setState(() {
                                        color6 = notSelected6;
                                        fontWeight = notSelectedFW;
                                      });
                                    },
                                    child: Text(
                                      "mahmoud.harooney.tooling@gmail.com",
                                      style: TextStyle(
                                          wordSpacing: 4.0,
                                          letterSpacing: 2.0,
                                          fontFamily: "Sofia",
                                          fontWeight: fontWeight,
                                          height: 1.0,
                                          color: color6,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Container(
                                width: 0.5,
                                height: 70.0,
                                color: QubicleColors.fontColorGray,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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

class MobilePortfolioScreen1 extends StatefulWidget {
  MobilePortfolioScreen1({Key? key}) : super(key: key);

  @override
  _MobilePortfolioScreen1State createState() => _MobilePortfolioScreen1State();
}

class _MobilePortfolioScreen1State extends State<MobilePortfolioScreen1> {
  ScrollController? _controller;
  double pixels2 = 0.0;
  var dataKey = new GlobalKey();
  final dataKey2 = new GlobalKey();
  final dataKey3 = new GlobalKey();
  final dataKey4 = new GlobalKey();
  final dataKey5 = new GlobalKey();

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    _controller?.addListener(() {
      setState(() {
        pixels2 = _controller!.position.pixels;
        print(pixels2);
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(() {
      // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
      _controller?.position.moveTo(dragUpdate.globalPosition.dy * 3.5);
    });
  }

  Color color = notSelected;
  FontWeight fontWeight = notSelectedFW;
  Color color2 = notSelected2;
  FontWeight fontWeight2 = notSelectedFW2;
  Color color3 = notSelected3;
  FontWeight fontWeight3 = notSelectedFW3;
  Color color4 = notSelected4;
  Color color5 = notSelected4;
  Color color6 = notSelected4;
  FontWeight fontWeight4 = notSelectedFW4;

  _launchURL() async {
    final url = Uri.encodeFull(
        'mailto:mahmoud.harooney.tooling@gmail.com?subject=Your Subject&body=Hello Mahmoud');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchGithub() async {
    final url = "https://github.com/MHarooney";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchInstagram() async {
    final url = "https://www.instagram.com/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchTwitter() async {
    final url = "https://twitter.com/twitter";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchLinkedIn() async {
    final url = "https://www.linkedin.com/in/mahmoud-al-haroon-b9906a1a1/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchCode() async {
    final url = "https://stackoverflow.com/users/6317695/mahmoud-al-haroon";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      backgroundColor: QubicleColors.mainColorP1,
      body: SingleChildScrollView(
        //Assign the controller to my scrollable widget
        controller: _controller,
        child: Column(
          children: [
            Column(
              children: <Widget>[
                NavbarT1(
                  dataKey: dataKey,
                  dataKey2: dataKey2,
                  dataKey3: dataKey3,
                  dataKey4: dataKey4,
                  dataKey5: dataKey5,
                ),
                HeaderContent1(
                  key: dataKey,
                ),
                AnimatedOpacity(
                  opacity: pixels2 >= 120 ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 1200),
                  child: AnimatedPadding(
                    duration: Duration(milliseconds: 1200),
                    padding: EdgeInsets.only(top: pixels2 >= 120 ? 0.0 : 100),
                    child: HeaderContent2(
                      key: dataKey2,
                    ),
                  ),
                ),
                AnimatedOpacity(
                  duration: Duration(milliseconds: 1200),
                  opacity: pixels2 >= 1462 ? 1.0 : 0.0,
                  child: AnimatedPadding(
                    duration: Duration(milliseconds: 1200),
                    padding: EdgeInsets.only(top: pixels2 >= 1462 ? 0.0 : 100),
                    child: HeaderContent3(
                      key: dataKey3,
                    ),
                  ),
                ),
                AnimatedPadding(
                  duration: Duration(milliseconds: 1000),
                  padding: EdgeInsets.only(top: pixels2 >= 2000 ? 0.0 : 100),
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: pixels2 >= 2000 ? 1.0 : 0.0,
                    child: HeaderContent4(
                      pixels: pixels2,
                      key: dataKey4,
                    ),
                  ),
                ),
                AnimatedAlign(
                  duration: Duration(milliseconds: 1000),
                  alignment: pixels2 >= 6200
                      ? Alignment(0.0, 1.0)
                      : Alignment(-0.2, 1.0),
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: pixels2 >= 6200 ? 1.0 : 0.0,
                    child: HeaderContent5(
                      key: dataKey5,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        _launchGithub();
                      },
                      child: MouseRegion(
                        onEnter: (values) {
                          setState(() {
                            color = selected;
                            fontWeight = selectedFW;
                          });
                        },
                        onExit: (values) {
                          setState(() {
                            color = notSelected;
                            fontWeight = notSelectedFW;
                          });
                        },
                        child: Image.asset(
                          "assets/template1/github.png",
                          color: color,
                          height: 17.1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 33.0,
                    ),
                    InkWell(
                      onTap: () {
                        _launchLinkedIn();
                      },
                      child: MouseRegion(
                        onEnter: (values) {
                          setState(() {
                            color4 = selected4;
                          });
                        },
                        onExit: (values) {
                          setState(() {
                            color4 = notSelected4;
                          });
                        },
                        child: Image.asset(
                          "assets/template1/linkedin.png",
                          height: 17.1,
                          color: color4,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 33.0,
                    ),
                    InkWell(
                      onTap: () {
                        _launchCode();
                      },
                      child: MouseRegion(
                        onEnter: (values) {
                          setState(() {
                            color5 = selected5;
                          });
                        },
                        onExit: (values) {
                          setState(() {
                            color5 = notSelected5;
                          });
                        },
                        child: Image.asset(
                          "assets/template1/stack-overflow.png",
                          height: 17.1,
                          color: color5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: MouseRegion(
                    onEnter: (values) {
                      setState(() {
                        color6 = selected6;
                        fontWeight = selectedFW;
                      });
                    },
                    onExit: (values) {
                      setState(() {
                        color6 = notSelected6;
                        fontWeight = notSelectedFW;
                      });
                    },
                    child: Text(
                      "mahmoud.harooney.tooling@gmail.com",
                      style: TextStyle(
                          wordSpacing: 4.0,
                          letterSpacing: 2.0,
                          fontFamily: "Sofia",
                          fontWeight: fontWeight,
                          height: 1.0,
                          color: color6,
                          fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            )
          ],
        ),
      ),
    );
  }
}
