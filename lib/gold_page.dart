import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'forms/FormLib.dart';
import 'MyWIdgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'Value.dart';

class OrPage extends StatefulWidget {
  const OrPage({Key? key}) : super(key: key);

  @override
  State<OrPage> createState() => _OrPageState();
}

class _OrPageState extends State<OrPage> {
  final myController = TextEditingController();

  static double goodWidth(double screenwidth) {
    if (screenwidth < 400)
      return 0.95 * screenwidth;
    else
      return 380;
  }

  final String title = 'Or';
  carats? _character = carats.c24;

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
                  height: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/goldcon.png"),
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              FormLib.myText('Poids d\'or :'),
                              SizedBox(
                                height: 10,
                              ),
                              FormLib.myTextField(
                                  controller: Values.orController,
                                  autofocus: true,
                                  last: true,
                                  unit: " g  "),
                              SizedBox(
                                height: 10,
                              ),
                              FormLib.myText('Type d\'or :'),
                              ListTile(
                                  title: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: InkWell(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                            child: Radio<carats>(
                                              value: carats.c24,
                                              groupValue: Values.car,
                                              onChanged: (carats? value) {
                                                setState(() {
                                                  Values.car = value;
                                                });
                                              },
                                            )),
                                        const Text('24 ',
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 18)),
                                      ],
                                    ),
                                    onTap: () {
                                      setState(() {
                                        Values.car = carats.c24;
                                      });
                                    },
                                  )),
                                  Expanded(
                                      child: InkWell(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                            child: Radio<carats>(
                                              value: carats.c21,
                                              groupValue: Values.car,
                                              onChanged: (carats? value) {
                                                setState(() {
                                                  Values.car = value;
                                                });
                                              },
                                            )),
                                        const Text('21 ',
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 18)),
                                      ],
                                    ),
                                    onTap: () {
                                      setState(() {
                                        Values.car = carats.c21;
                                      });
                                    },
                                  )),
                                  Expanded(
                                    child: InkWell(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 0, 0, 0),
                                              child: Radio<carats>(
                                                value: carats.c18,
                                                groupValue: Values.car,
                                                onChanged: (carats? value) {
                                                  setState(() {
                                                    Values.car = value;
                                                  });
                                                },
                                              )),
                                          const Text('18 ',
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                      onTap: () {
                                        setState(() {
                                          Values.car = carats.c18;
                                        });
                                      },
                                    ),
                                  )
                                ],
                              )),
                              FormLib.myButtonRow(
                                scrennWidth,
                                context,
                                [Values.orController],
                                FormLib.Func,
                                title,
                                'g',
                              )
                            ],
                          ))),
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
              ])))
            ],
          )))
    ]));
  }
}
