import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'forms/FormLib.dart';
import 'dart:ui';
import 'MyWIdgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'Value.dart';

class NumerPage extends StatefulWidget {
  const NumerPage({Key? key}) : super(key: key);

  @override
  State<NumerPage> createState() => _NumerPageState();
}

class _NumerPageState extends State<NumerPage>
    with AutomaticKeepAliveClientMixin<NumerPage> {
  @override
  bool get wantKeepAlive => true;
  var myController = TextEditingController();
  static double goodWidth(double screenwidth) {
    if (screenwidth < 400)
      return 0.95 * screenwidth;
    else
      return 380;
  }

  //bool dot = true;

  final String title = 'Numéraires';
  Widget build(BuildContext context) {
    super.build(context);
    double height = MediaQuery.of(context).size.height;
    double screenHeight = height - 50;
    double scrennWidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Stack(children: [
      MyWaveBg(width: scrennWidth, height: height),
      Scaffold(
          backgroundColor: Colors.red.withOpacity(0.0),
          body: Center(
              child: Column(
            children: <Widget>[
              Expanded(
                  child: SingleChildScrollView(
                      // <-- wrap this around
                      child: Column(children: <Widget>[
                Container(
                  //                   constraints: BoxConstraints(minHeight: height),
                  width: 80,
                  height: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/money-bag.png"),
                        fit: BoxFit.fitWidth),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Hero(
                        tag: title,
                        child: AutoSizeText(
                          title,
                          style: TextStyle(
                            fontFamily: 'Sunflower',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            decoration: TextDecoration.none,
                            //         fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.right,
                        ))),
                Stack(children: [
                  Card(
                    color: Colors.white.withOpacity(0.0),
                    elevation: 5,
                  ),
                  Container(
                      width: goodWidth(scrennWidth),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            stops: [0.5, 0.5],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.lightGreenAccent.withOpacity(0.4),
                              Color(0xff7BFF57).withOpacity(0.4),
                            ]),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.5),
                        ),
                        //  color: Color(0xff92d36e),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Material(
                          color: Colors.white.withOpacity(0.0),
                          child: Column(children: [
                            SizedBox(
                              height: 10,
                            ),
                            FormLib.myText('Somme d\'argent :'),
                            SizedBox(
                              height: 10,
                            ),
                            FormLib.myTextField(
                                controller: Values.numerController,
                                autofocus: true,
                                last: true,
                                unit: " da "),
                            SizedBox(
                              height: 10,
                            ),
                            FormLib.myButtonRow(
                                scrennWidth,
                                context,
                                [Values.numerController],
                                FormLib.Func,
                                "Numéraires",
                                "DA")
                          ])))
                ]),
                Padding(
                    padding: EdgeInsets.all(50),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.redAccent.withOpacity(0.9)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                            child: Icon(
                          Icons.arrow_back_ios_new_sharp,
                          size: 40,
                        )),
                      ),
                    )),
              ]))),
            ],
          )))
    ]));
  }
}
