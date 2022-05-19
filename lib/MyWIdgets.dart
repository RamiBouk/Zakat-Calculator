import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:wave/config.dart';

import 'package:wave/wave.dart';

class MyWave extends StatefulWidget {
  final double height;
  final double width;
  const MyWave({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  _MyWaveState createState() => _MyWaveState();
}

class _MyWaveState extends State<MyWave> {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
        offset: Offset(150, 0),
        child: Transform.rotate(
            angle: -3.14 / 1.3,
            child: Container(
                width: widget.height,
                height: widget.width,
                child: WaveWidget(
                  config: CustomConfig(
                    // colors: [
                    //   Colors.white70,
                    //   Colors.white54,
                    //   Colors.white30,
                    //   Colors.white24,
                    // ],
                    gradients: [
                      [Colors.white, Color(0xff7BFF57)],
                      [Colors.white, Color(0x77007700)],
                      [
                        Colors.white,
                        Color(0xff37FF00),
                      ],
                      [
                        Colors.white,
                        Colors.white,
                        Colors.lightGreenAccent,
                        Colors.lightGreenAccent
                      ]
                    ],
                    durations: [20000, 10440, 9800, 9000],
                    heightPercentages: [0.05, 0.06, 0.7, 0.08],
                    blur: MaskFilter.blur(BlurStyle.solid, 10),
                    gradientBegin: Alignment(0.5, 2.5),
                    gradientEnd: Alignment(-0.5, -2.5),
                  ),
                  waveAmplitude: 0,
                  size: Size(
                    double.infinity,
                    1000,
                  ),
                ))));
  }
}

class MyWaveBg extends StatefulWidget {
  final double height;
  final double width;
  const MyWaveBg({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  _MyWaveBgState createState() => _MyWaveBgState();
}

class _MyWaveBgState extends State<MyWaveBg> {
  @override
  Widget build(BuildContext context) {
    double width = widget.width;
    double height = widget.height;
    return Container(
        width: width,
        height: height * 1.5,
        // decoration: BoxDecoration(
        //     // image: DecorationImage(
        //     //   image: AssetImage("images/Islamic-Mosque-Backgrounds.jpg"),
        //     //   fit: BoxFit.cover,
        //     // ),
        //     gradient: LinearGradient(
        //         stops: [0.5, 1],
        //         begin: Alignment.bottomLeft,
        //         end: Alignment.topRight,
        //         colors: [
        //           Color(0xff8fd974),
        //           Colors.lightGreen.shade100,
        //         ])),
        child: WaveWidget(
          config: CustomConfig(
            // colors: [
            //   Colors.white70,
            //   Colors.white54,
            //   Colors.white30,
            //   Colors.white24,
            // ],
            gradients: [
              [
                Colors.lightGreen.shade100,
                Color(0xff8fd974),
              ],
              [Colors.white, Color(0xff7BFF57)],
              [Colors.white, Color(0x77007700)],
              [Colors.white, Colors.lightGreenAccent.withOpacity(0.8)],
            ],
            durations: [30000, 64000, 52000, 72000],
            heightPercentages: [-0.30, 0.43, 0.45, 0.47],
            blur: MaskFilter.blur(BlurStyle.solid, 10),
            gradientBegin: Alignment.topCenter,
            gradientEnd: Alignment.bottomCenter,
          ),
          waveAmplitude: 30,
          waveFrequency: 0.8,
          heightPercentange: 0.4,
          size: Size(
            double.infinity,
            double.infinity,
          ),
        ));
  }
}

class MyOption extends StatefulWidget {
  final String imageLocation;
  final String title;
  final StatefulWidget page;

  const MyOption({
    Key? key,
    required this.imageLocation,
    required this.title,
    required this.page,
  }) : super(key: key);

  @override
  _MyOptionState createState() => _MyOptionState();
}

class _MyOptionState extends State<MyOption>
    with
        AutomaticKeepAliveClientMixin<MyOption>,
        SingleTickerProviderStateMixin<MyOption> {
  @override
  bool get wantKeepAlive => true;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  static double goodHeight(double width) {
    if (width < 400)
      return 0.40 * width;
    else
      return 0.40 * 400;
  }

  static double goodWidth(double screenwidth) {
    if (screenwidth < 400)
      return 0.98 * screenwidth;
    else
      return 0.98 * 400;
  }

//  String title = '';
  Route _createRoute(StatefulWidget page) {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 1000),
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeInOutCirc;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
  //bool _isClosed = true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    double screenWidth = MediaQuery.of(context).size.width;
    double width = goodWidth(screenWidth);
    double height = goodHeight(width);
    return Container(
        width: goodWidth(width),
        alignment: Alignment.center,
        child: Column(children: [
          Card(
              elevation: 8,
              clipBehavior: Clip.antiAlias,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                Radius.circular(15),
              )),
              color: Colors.white.withOpacity(0.0),
              child: Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.imageLocation),
                        fit: BoxFit.cover),
                    border: Border.all(color: Colors.black.withOpacity(0.3)),
                    color: Color(0xff92d36e),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Stack(children: [
                    MyWave(width: 400, height: 500),
                    Container(
                        height: height,
                        width: width,
                        alignment: Alignment.topRight,
                        child: Container(
                            margin: EdgeInsets.all(5),
                            width: 500,
                            child: AutoSizeText(
                              widget.title,
                              style: TextStyle(
                                fontFamily: 'Sunflower',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                decoration: TextDecoration.none,
                                //fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.right,
                            ))),
                    Material(
                        color: Colors.white.withOpacity(0.0),
                        child: InkWell(
                          // splashColor: Colors.white,

                          onTap: () {
                            Navigator.of(context)
                                .push(_createRoute(widget.page));
                          },
                        )),
                  ]))),
        ]));
  }
}

class MyMenu extends StatefulWidget {
  final String imageLocation;
  final String title;
  final List subTitles;
  final List pages;

  const MyMenu({
    Key? key,
    required this.imageLocation,
    required this.title,
    required this.subTitles,
    required this.pages,
  }) : super(key: key);
  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  static double goodHeight(double width) {
    if (width < 400)
      return 0.40 * width;
    else
      return 0.40 * 400;
  }

  static double goodWidth(double screenwidth) {
    if (screenwidth < 400)
      return 0.98 * screenwidth;
    else
      return 0.98 * 400;
  }

  Route _createRoute(StatefulWidget page) {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 1000),
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0, 0.95);
        const end = Offset.zero;
        const curve = Curves.easeInOutCirc;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  bool _isClosed = true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double width = goodWidth(screenWidth);
    double height = goodHeight(width);

    List<StatefulWidget> menu = [];
    for (int index = 0; index < widget.subTitles.length; index++) {
      menu.add(AnimatedContainer(
          duration: Duration(days: 0),
          child: Column(children: [
            Material(
                color: Colors.white.withOpacity(0),
                child: AnimatedContainer(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.lightGreen),
                    duration: Duration(milliseconds: index * 400 + 400),
                    height: _isClosed ? 5 : 40,
                    width: _isClosed ? 30 : width / 1.5,
                    alignment: Alignment.center,
                    child: SafeArea(
                        child: InkWell(
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.lightGreenAccent.withOpacity(0.4),
                                    Color(0xff7BFF57).withOpacity(0.4),
                                  ])),
                          //               color: Colors.red,
                          child: AnimatedOpacity(
                              opacity: _isClosed ? 0.0 : 1.0,
                              duration:
                                  Duration(milliseconds: index * 200 + 300),
                              child: Center(
                                  child: Text(
                                widget.subTitles[index],
                                //r      minFontSize: 20,
                                // maxFontSize: 50,
                                style: TextStyle(
                                    fontFamily: 'Sunflower',
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                    fontSize: 14
                                    //fontStyle: FontStyle.italic,
                                    ),
                                // textAlign: TextAlign.right,
                              )))),
                      onTap: _isClosed
                          ? () {
                              setState(() {
                                _isClosed = false;
                              });
                            }
                          : () {
                              Navigator.of(context)
                                  .push(_createRoute(widget.pages[index]));
                            },
                    )))),
            AnimatedContainer(
              duration: Duration(milliseconds: 700),
              height: _isClosed ? 3 : 5,
            )
          ])));
    }
    menu.add(AnimatedContainer(
        duration: Duration(milliseconds: menu.length * 250 + 300),
        height: _isClosed ? 0 : 40,
        curve: Curves.fastOutSlowIn,
        child: new LayoutBuilder(builder: (context, constraint) {
          return InkWell(
            child: AnimatedOpacity(
              opacity: _isClosed ? 0.0 : 1.0,
              duration: Duration(milliseconds: menu.length * 250 + 300),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.deepOrange, Colors.red])),
                  child: Icon(Icons.arrow_upward_outlined,
                      size: constraint.biggest.height)),
            ),
            onTap: () {
              setState(() {
                _isClosed = true;
              });
            },
          );
        })));
    return GestureDetector(
        onTap: () {
          setState(() {
            _isClosed = false;
          });
        },
        child: Container(
            width: goodWidth(width),
            alignment: Alignment.center,
            child: Column(children: [
              Card(
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
                  color: Colors.white.withOpacity(0.0),
                  child: Container(
                      constraints: BoxConstraints(minHeight: height),
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage(widget.imageLocation),
                            fit: BoxFit.cover),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.3)),
                      ),
                      child: Stack(children: [
                        BackdropFilter(
                            filter: ImageFilter.blur(
                                sigmaX: _isClosed ? 0.001 : 2,
                                sigmaY: _isClosed ? 0.001 : 2),
                            child: Container()),
                        Transform.translate(
                            offset: Offset(150, 0),
                            child: Transform.rotate(
                                angle: -3.14 / 1.3,
                                child: Container(
                                    width: width,
                                    height: height,
                                    child: WaveWidget(
                                      config: CustomConfig(
                                        // colors: [
                                        //   Colors.white70,
                                        //   Colors.white54,
                                        //   Colors.white30,
                                        //   Colors.white24,
                                        // ],
                                        gradients: [
                                          [Colors.white, Color(0xff7BFF57)],
                                          [Colors.white, Color(0x77007700)],
                                          [
                                            Colors.white,
                                            Color(0xff37FF00),
                                          ],
                                          [
                                            Colors.white,
                                            Colors.white,
                                            Colors.lightGreenAccent,
                                            Colors.lightGreenAccent
                                          ]
                                        ],
                                        durations: [45000, 29440, 20800, 9000],
                                        heightPercentages: [
                                          0.05,
                                          0.06,
                                          0.07,
                                          0.08
                                        ],
                                        blur: MaskFilter.blur(
                                            BlurStyle.solid, 10),
                                        gradientBegin: Alignment(0.5, 2.5),
                                        gradientEnd: Alignment(-0.5, -2.5),
                                      ),
                                      waveAmplitude: 0,
                                      size: Size(
                                        double.infinity,
                                        1000,
                                      ),
                                    )))),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Column(
                                children: <Widget>[
                                      AnimatedContainer(
                                          duration: Duration(milliseconds: 400),
                                          height: _isClosed
                                              ? (height * 0.6) / 10.0
                                              : 0),
                                      AnimatedContainer(
                                          duration: Duration(milliseconds: 400),
                                          margin: EdgeInsets.all(5),
                                          width: 500,
                                          height: _isClosed ? 100 : 50,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 20),
                                              child: AutoSizeText(
                                                widget.title,
                                                style: TextStyle(
                                                    fontFamily: 'Sunflower',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 25),
                                                textAlign: TextAlign.right,
                                              ))),
                                    ] +
                                    menu))
                      ]))),
              AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: _isClosed ? (height * 0.2) / 10.0 : 0)
            ])));
  }
}

/// This