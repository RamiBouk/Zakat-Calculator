import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer/recipient.dart';
import 'landing_page.dart';

import 'drawer/QuranSuna.dart';
import 'drawer/condition.dart';
import 'package:flutter/services.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, Key? key}) : super(key: key);
  // Fields in a Widget subclass are always marked "final"
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Color(0xff424242), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 3,
          offset: Offset(0, 3),
        )
      ]),
      // Row is a horizontal, linear layout.
      child: Row(
        // <Widget> is the type of items in the list.
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [Icon(Icons.info, color: Colors.white)],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyAppBar1 extends StatelessWidget {
  const MyAppBar1({required this.title, Key? key}) : super(key: key);
  // Fields in a Widget subclass are always marked "final".
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Container(
          height: 50.0, // in logical pixels
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(color: Color(0xff424242), boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3),
            )
          ]),
          // Row is a horizontal, linear layout.
          child: Row(
            // <Widget> is the type of items in the list.
            children: [
              Container(
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Color(0xff394141),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Zakatk',
                      style: TextStyle(
                          fontFamily: 'Arizonia',
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    children: [Icon(Icons.info, color: Colors.white)],
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

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

    return Scaffold(
        resizeToAvoidBottomInset: false,
        key: _key,
        endDrawer: Drawer(
            child: Scaffold(
                floatingActionButton: InkWell(
                  child: Container(
                      height: 60,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Colors.deepOrangeAccent, Colors.red])),
                      child: Icon(Icons.arrow_forward_ios)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                body: Container(
                  child: ListView(
                    // padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                    children: [
                      DrawerHeader(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "images/imageonline-co-whitebackgroundremoved.png"),
                                fit: BoxFit.fitWidth)),
                        child: Text(''),
                      ),
                      Container(
                        color: Colors.black12,
                        height: 1,
                      ),
                      InkWell(
                        child: ListTile(
                          leading: Icon(
                            Icons.info,
                            size: 30,
                          ),
                          title: Text(
                            "Zakat dans le Quraan et Sunna",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(_createRoute(DefPage()));
                        },
                      ),
                      Container(
                        color: Colors.black12,
                        height: 1,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.info,
                          size: 30,
                        ),
                        title: Text(
                          "Les recipients de Zakat",
                          style: TextStyle(fontSize: 15),
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(_createRoute(RecepientPage()));
                        },
                      ),
                      Container(
                        color: Colors.black12,
                        height: 1,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.info,
                          size: 30,
                        ),
                        title: Text(
                          "Condition de Zakat",
                          style: TextStyle(fontSize: 15),
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(_createRoute(ConditionPage()));
                        },
                      ),
                      Container(
                        color: Colors.black12,
                        height: 1,
                      ),
                    ],
                  ),
                ))),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100.0),
            child: Container(
              height: 50.0, // in logical pixels
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(color: Color(0xff394141), boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 3),
                )
              ]),
              // Row is a horizontal, linear layout.
              child: Row(
                // <Widget> is the type of items in the list.
                children: [
                  Container(
                    width: 140,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/miniLogo.png"),
                            fit: BoxFit.fitWidth)),
                  ),

                  //     Drawer(),

                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                              width: 40,
                              child: InkWell(
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                                onTap: () => _key.currentState!
                                    .openEndDrawer(), // <-- Opens drawer
                              )),
                        ],
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                    ),
                  )
                ],
              ),
            )),
        body: SafeArea(
            child: Container(
                color: Colors.green.withAlpha(150),
                child: Container(
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //   image: AssetImage("images/Islamic-Mosque-Backgrounds.jpg"),
                        //   fit: BoxFit.cover,
                        // ),
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                          Colors.lightGreenAccent.withOpacity(0.4),
                          Color(0xff7BFF57).withOpacity(0.4),
                        ])),
                    alignment: Alignment.center,
                    child: MainPage()))));
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      MaterialApp(
          theme: ThemeData(
              //r       canvasColor: Color(0xfffff2cc),
              ),
          debugShowCheckedModeBanner: false,
          title: 'My app',
          home: SafeArea(
            child: const MyScaffold(),
          )),
    );
  });
}
