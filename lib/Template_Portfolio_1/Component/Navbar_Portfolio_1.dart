import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:malharoon/Helper/OnHover.dart';
import 'package:malharoon/Helper/QubicleColor.dart';

class NavbarT1 extends StatelessWidget {
  NavbarT1(
      {this.dataKey,
      this.dataKey2,
      this.dataKey3,
      this.dataKey4,
      this.dataKey5});
  var dataKey = new GlobalKey();
  var dataKey2 = new GlobalKey();
  var dataKey3 = new GlobalKey();
  var dataKey4 = new GlobalKey();
  var dataKey5 = new GlobalKey();

  double collapsableHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbarT1(
              dataKey: dataKey,
              dataKey2: dataKey2,
              dataKey3: dataKey3,
              dataKey4: dataKey4,
              dataKey5: dataKey5);
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbarT1(
              dataKey: dataKey,
              dataKey2: dataKey2,
              dataKey3: dataKey3,
              dataKey4: dataKey4,
              dataKey5: dataKey5);
        } else {
          return MobileNavbarT1(
              dataKey: dataKey,
              dataKey2: dataKey2,
              dataKey3: dataKey3,
              dataKey4: dataKey4,
              dataKey5: dataKey5);
        }
      },
    );
  }
}

class DesktopNavbarT1 extends StatefulWidget {
  var dataKey = new GlobalKey();
  var dataKey2 = new GlobalKey();
  var dataKey3 = new GlobalKey();
  var dataKey4 = new GlobalKey();
  var dataKey5 = new GlobalKey();
  DesktopNavbarT1(
      {Key key,
      this.dataKey,
      this.dataKey2,
      this.dataKey3,
      this.dataKey4,
      this.dataKey5})
      : super(key: key);

  @override
  _DesktopNavbarT1State createState() => _DesktopNavbarT1State();
}

class _DesktopNavbarT1State extends State<DesktopNavbarT1> {
  Color color = notSelected;
  FontWeight fontWeight = notSelectedFW;
  Color color2 = notSelected2;
  FontWeight fontWeight2 = notSelectedFW2;
  Color color3 = notSelected3;
  FontWeight fontWeight3 = notSelectedFW3;
  Color color4 = notSelected4;
  FontWeight fontWeight4 = notSelectedFW4;
  Color color5 = notSelected4;
  Color color6 = notSelected4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/template1/logo.png",
                    height: 45.0,
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Scrollable.ensureVisible(widget.dataKey.currentContext);
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
                    child: Row(
                      children: [
                        Text(
                          "00.",
                          style: TextStyle(
                              fontFamily: "Mono",
                              fontWeight: fontWeight,
                              height: 1.0,
                              color: color),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Hello",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: fontWeight,
                              height: 1.0,
                              color: color,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                InkWell(
                  onTap: () {
                    Scrollable.ensureVisible(widget.dataKey2.currentContext);
                  },
                  child: MouseRegion(
                    onEnter: (value2) {
                      setState(() {
                        color2 = selected2;
                        fontWeight2 = selectedFW2;
                      });
                    },
                    onExit: (value2) {
                      setState(() {
                        color2 = notSelected2;
                        fontWeight2 = notSelectedFW2;
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                          "01.",
                          style: TextStyle(
                              fontFamily: "Mono",
                              fontWeight: fontWeight2,
                              height: 1.0,
                              color: color2),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "About",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: fontWeight2,
                              height: 1.0,
                              color: color2,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                MouseRegion(
                  onEnter: (value) {
                    setState(() {
                      color3 = selected3;
                      fontWeight3 = selectedFW3;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      color3 = notSelected3;
                      fontWeight3 = notSelectedFW3;
                    });
                  },
                  child: InkWell(
                    onTap: () {
                      Scrollable.ensureVisible(widget.dataKey3.currentContext);
                    },
                    child: Row(
                      children: [
                        Text(
                          "02.",
                          style: TextStyle(
                              fontFamily: "Mono",
                              fontWeight: fontWeight3,
                              height: 1.0,
                              color: color3),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Experience",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: fontWeight3,
                              height: 1.0,
                              color: color3,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                MouseRegion(
                  onEnter: (value) {
                    setState(() {
                      color4 = selected4;
                      fontWeight4 = selectedFW4;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      color4 = notSelected4;
                      fontWeight4 = notSelectedFW4;
                    });
                  },
                  child: InkWell(
                    onTap: () {
                      Scrollable.ensureVisible(widget.dataKey4.currentContext);
                    },
                    child: Row(
                      children: [
                        Text(
                          "03.",
                          style: TextStyle(
                              fontFamily: "Mono",
                              fontWeight: fontWeight4,
                              height: 1.0,
                              color: color4),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Portfolio",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: fontWeight4,
                              height: 1.0,
                              color: color4,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                OnHover(builder: (isHovered) {
                  return PhysicalModel(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Scrollable.ensureVisible(
                            widget.dataKey5.currentContext);
                      },
                      child: Container(
                        height: 41.0,
                        width: 90.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: QubicleColors.secondColorP1, width: 1.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0))),
                        child: Center(
                          child: Text(
                            "Contact",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w500,
                                color: QubicleColors.secondColorP1,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                SizedBox(
                  width: 20.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbarT1 extends StatefulWidget {
  var dataKey = new GlobalKey();
  var dataKey2 = new GlobalKey();
  var dataKey3 = new GlobalKey();
  var dataKey4 = new GlobalKey();
  var dataKey5 = new GlobalKey();
  MobileNavbarT1(
      {Key key,
      this.dataKey,
      this.dataKey2,
      this.dataKey3,
      this.dataKey4,
      this.dataKey5})
      : super(key: key);

  @override
  _MobileNavbarT1State createState() => _MobileNavbarT1State();
}

class _MobileNavbarT1State extends State<MobileNavbarT1> {
  @override
  Color color = notSelected;
  FontWeight fontWeight = notSelectedFW;
  Color color2 = notSelected2;
  FontWeight fontWeight2 = notSelectedFW2;
  Color color3 = notSelected3;
  FontWeight fontWeight3 = notSelectedFW3;
  Color color4 = notSelected4;
  FontWeight fontWeight4 = notSelectedFW4;
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Stack(
        children: [
          Container(),
          AnimatedContainer(
            margin: EdgeInsets.only(top: 79.0),
            duration: Duration(milliseconds: 375),
            curve: Curves.ease,
            height: (width < 800.0) ? collapsableHeight : 0.0,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MouseRegion(
                    onEnter: (value) {
                      setState(() {
                        color = selected;
                        fontWeight = selectedFW;
                      });
                    },
                    onExit: (value) {
                      setState(() {
                        color = notSelected;
                        fontWeight = notSelectedFW;
                      });
                    },
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.white60,
                        onTap: () {
                          Scrollable.ensureVisible(
                              widget.dataKey.currentContext);
                        },
                        child: Container(
                          height: 50.0,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 14.0),
                          child: Text(
                            "Hello",
                            style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: fontWeight,
                              fontSize: 16.0,
                              color: color,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (value) {
                      setState(() {
                        color2 = selected2;
                        fontWeight2 = selectedFW2;
                      });
                    },
                    onExit: (value) {
                      setState(() {
                        color2 = notSelected2;
                        fontWeight2 = notSelectedFW2;
                      });
                    },
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.white60,
                        onTap: () {
                          Scrollable.ensureVisible(
                              widget.dataKey2.currentContext);
                        },
                        child: Container(
                          height: 50.0,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 14.0),
                          child: Text(
                            "About",
                            style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: fontWeight2,
                              fontSize: 16.0,
                              color: color2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (value) {
                      setState(() {
                        color3 = selected3;
                        fontWeight3 = selectedFW3;
                      });
                    },
                    onExit: (value) {
                      setState(() {
                        color3 = notSelected3;
                        fontWeight3 = notSelectedFW3;
                      });
                    },
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.white60,
                        onTap: () {
                          Scrollable.ensureVisible(
                              widget.dataKey3.currentContext);
                        },
                        child: Container(
                          height: 50.0,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 14.0),
                          child: Text(
                            "Experience",
                            style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: fontWeight3,
                              fontSize: 16.0,
                              color: color3,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (value) {
                      setState(() {
                        color4 = selected4;
                        fontWeight4 = selectedFW4;
                      });
                    },
                    onExit: (value) {
                      setState(() {
                        color4 = notSelected4;
                        fontWeight4 = notSelectedFW4;
                      });
                    },
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.white60,
                        onTap: () {
                          Scrollable.ensureVisible(
                              widget.dataKey4.currentContext);
                        },
                        child: Container(
                          height: 50.0,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 14.0),
                          child: Text(
                            "Portfolio",
                            style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: fontWeight4,
                              fontSize: 16.0,
                              color: color4,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 80.0,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/template1/logo.png",
                      height: 45.0,
                    ),
                  ],
                ),
                LayoutBuilder(builder: (context, constraints) {
                  if (width < 800.0) {
                    return NavBarButton(
                      onPressed: () {
                        if (collapsableHeight == 0.0) {
                          setState(() {
                            collapsableHeight = 240.0;
                          });
                        } else if (collapsableHeight == 240.0) {
                          setState(() {
                            collapsableHeight = 0.0;
                          });
                        }
                      },
                    );
                  } else {
                    return Row(
                      children: navBarItems,
                    );
                  }
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}

double collapsableHeight = 0.0;
Color selected = QubicleColors.secondColorP1;
Color selected2 = QubicleColors.secondColorP1;
Color selected3 = QubicleColors.secondColorP1;
Color selected4 = QubicleColors.secondColorP1;
Color selected5 = QubicleColors.secondColorP1;
Color selected6 = QubicleColors.secondColorP1;
Color notSelected = QubicleColors.fontColorGray;
Color notSelected2 = QubicleColors.fontColorGray;
Color notSelected3 = QubicleColors.fontColorGray;
Color notSelected4 = QubicleColors.fontColorGray;
Color notSelected5 = QubicleColors.fontColorGray;
Color notSelected6 = QubicleColors.fontColorGray;
FontWeight selectedFW = FontWeight.w800;
FontWeight selectedFW2 = FontWeight.w800;
FontWeight selectedFW3 = FontWeight.w800;
FontWeight selectedFW4 = FontWeight.w800;
FontWeight notSelectedFW = FontWeight.w600;
FontWeight notSelectedFW2 = FontWeight.w600;
FontWeight notSelectedFW3 = FontWeight.w600;
FontWeight notSelectedFW4 = FontWeight.w600;

List<Widget> navBarItems = [
  NavBarItem(
    text: 'Hello',
  ),
  NavBarItem(
    text: 'About',
  ),
  NavBarItem(
    text: 'Experience',
  ),
  NavBarItem(
    text: 'Portfolio',
  ),
  NavBarItem(
    text: 'Contact',
  ),
];

class NavBarItem extends StatefulWidget {
  final String text;

  NavBarItem({
    this.text,
  });

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color color = notSelected;
  FontWeight fontWeight = notSelectedFW;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          color = selected;
          fontWeight = selectedFW;
        });
      },
      onExit: (value) {
        setState(() {
          color = notSelected;
          fontWeight = notSelectedFW;
        });
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {},
          child: Container(
            height: 50.0,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
              widget.text,
              style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: fontWeight,
                fontSize: 16.0,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavBarButton extends StatefulWidget {
  final Function onPressed;

  NavBarButton({
    this.onPressed,
  });

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 45.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: QubicleColors.secondColorP1,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: InkWell(
          splashColor: QubicleColors.secondColorP1,
          onTap: () {
            setState(() {
              widget.onPressed();
            });
          },
          child: Icon(
            EvaIcons.moreVerticalOutline,
            color: QubicleColors.secondColorP1,
          ),
        ),
      ),
    );
  }
}
