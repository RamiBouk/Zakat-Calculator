import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';

//import 'package:expansion_card/expansion_card.dart';

import 'numer_page.dart';
// import 'agro_page.dart';
import 'cattle_page.dart';
import 'agro_page.dart';
import 'gold_page.dart';
import 'silver_page.dart';
import 'sheep_page.dart';
import 'camel_page.dart';
import 'package:animations/animations.dart';
import 'MyWIdgets.dart';

/// This is the private State class that goes with MyStatefulWidget.

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageSate();
}

class _MainPageSate extends State<MainPage> {
  Route _createRoute(StatefulWidget page) {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0, 1);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Widget myBox(double height) {
    return SizedBox(height: (height * 0.2) / 20.0);
  }

  final numerPage = NumerPage(key: PageStorageKey("numer"));
  final PageStorageBucket bucket = PageStorageBucket();

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final double screenHeight = height - 50;

    return Scaffold(
        backgroundColor: Colors.red.withOpacity(0),
        body: Container(
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage("images/isalmic.png"),
            //     fit: BoxFit.cover,
            //   ),rz
            // ),
            height: screenHeight,
            alignment: Alignment.center,
            child: RawScrollbar(
                isAlwaysShown: true,
                thumbColor: Colors.black38,
                radius: Radius.circular(20),
                thickness: 5,
                child: ListView(children: <Widget>[
                  myBox(height * 5),
                  MyMenu(
                    imageLocation: "images/gold.png",
                    title: "Metal",
                    subTitles: ["Or", "Argent"],
                    pages: [OrPage(), SilverPage()],
                  ),
                  myBox(height),
                  MyMenu(
                    imageLocation: "images/Cattle.jpg",
                    title: "Betail",
                    subTitles: ["Bovins", "Ovins", 'Chameux'],
                    pages: [BovinsPage(), OvisPage(), ChameuxPage()],
                  ),
                  myBox(height),
                  MyOption(
                    imageLocation: "images/Money.jpg",
                    title: "Numéraires",
                    page: numerPage,
                  ),
                  myBox(height),
                  MyOption(
                    imageLocation: "images/fruits.jpg",
                    title: "Agricoles",
                    page: AgroPage(),
                  ),
                ]))));
  }
}
