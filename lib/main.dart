import 'package:flutter/material.dart';
import 'package:malharoon/Helper/QubicleColor.dart';

import 'Template_Portfolio_1/Component/Navbar_Portfolio_1.dart';
import 'Template_Portfolio_1/Portfolio_Screen_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mahmoud Al-Haroon',
      debugShowCheckedModeBanner: false,
      home: PortfolioScreen1(),
    );
  }
}
