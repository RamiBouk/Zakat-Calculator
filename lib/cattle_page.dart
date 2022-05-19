import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'forms/FormLib.dart';
import 'MyWIdgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'Value.dart';

class BovinsPage extends StatefulWidget {
  const BovinsPage({Key? key}) : super(key: key);

  @override
  State<BovinsPage> createState() => _BovinsPageState();
}

class _BovinsPageState extends State<BovinsPage> {
  final myController = TextEditingController();

  static double goodWidth(double screenwidth) {
    if (screenwidth < 400)
      return 0.95 * screenwidth;
    else
      return 380;
  }

  final String title = 'Bovins';

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double screenHeight = height - 50;
    double scrennWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Stack(children: [
      MyWaveBg(width: scrennWidth, height: screenHeight),
      Scaffold(
          backgroundColor: Colors.red.withOpacity(0.0),
          body: Center(
              child: Column(
            children: <Widget>[
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                Container(
                  //                   constraints: BoxConstraints(minHeight: height),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/cow-animal.png"),
                        fit: BoxFit.fitWidth),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 20, top: 5),
                    child: Hero(
                        tag: title.toString(),
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
                Container(
                  child: Container(
                      width: goodWidth(scrennWidth),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.lightGreenAccent.withOpacity(0.4),
                              Color(0xff7BFF57).withOpacity(0.4),
                            ]),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Material(
                          color: Colors.white.withOpacity(0.0),
                          child: Column(children: [
                            SizedBox(
                              height: 10,
                            ),
                            FormLib.myText('Nombre des bovins:'),
                            SizedBox(
                              height: 10,
                            ),
                            FormLib.myTextField(
                                controller: Values.cowController,
                                autofocus: true,
                                last: true),
                            SizedBox(
                              height: 10,
                            ),
                            FormLib.myButtonRow(
                              scrennWidth,
                              context,
                              [Values.cowController],
                              FormLib.Func,
                              title,
                              '',
                            )
                          ]))),
                ),
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
