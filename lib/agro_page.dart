import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'forms/FormLib.dart';
import 'MyWIdgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'Value.dart';

class AgroPage extends StatefulWidget {
  const AgroPage({Key? key}) : super(key: key);

  @override
  State<AgroPage> createState() => _AgroPageState();
}

class _AgroPageState extends State<AgroPage> {
  double quorum = 23;
  final myController = TextEditingController();

  Widget myText(String text) {
    return Text(
      text,
      style: TextStyle(decoration: TextDecoration.none, fontSize: 19),
    );
  }

  final types = null;

  static double goodWidth(double screenwidth) {
    if (screenwidth < 400)
      return 0.95 * screenwidth;
    else
      return 380;
  }

  final String title = 'Agricoles';

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
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/nutrition-protein.png"),
                        fit: BoxFit.fitWidth),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 20, top: 0),
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
                                  height: 20,
                                ),
                                FormLib.myText('Poids totale :'),
                                FormLib.myTextField(
                                    controller: Values.agroController,
                                    autofocus: true,
                                    last: true,
                                    unit: " kg  "),
                                Container(
                                    alignment: Alignment.bottomLeft,
                                    height: 40,
                                    child: InkWell(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Checkbox(
                                            checkColor: Colors.white,
                                            fillColor:
                                                MaterialStateProperty.all(
                                                    Values.wheet
                                                        ? Colors.blue
                                                        : Colors.black),
                                            value: Values.wheet,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                Values.wheet = !Values.wheet;
                                              });
                                            },
                                          ),
                                          Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 50, 0),
                                              child: const Text(
                                                  'Le produit est du blé',
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      fontSize: 18))),
                                        ],
                                      ),
                                      onTap: () {
                                        setState(() {
                                          Values.wheet = !Values.wheet;
                                        });
                                      },
                                    )),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    child:
                                        FormLib.myText('Type d\'irrigation :')),
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
                                              child: Radio<agrigation>(
                                                value: agrigation.artificielle,
                                                groupValue: Values.agr,
                                                onChanged: (agrigation? value) {
                                                  setState(() {
                                                    Values.agr = value;
                                                  });
                                                },
                                              )),
                                          const Text('Artificielle ',
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                      onTap: () {
                                        setState(() {
                                          Values.agr = agrigation.artificielle;
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
                                                child: Radio<agrigation>(
                                                  value: agrigation.naturelle,
                                                  groupValue: Values.agr,
                                                  onChanged:
                                                      (agrigation? value) {
                                                    setState(() {
                                                      Values.agr = value;
                                                    });
                                                  },
                                                )),
                                            const Text('Naturelle',
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 18)),
                                          ],
                                        ),
                                        onTap: () {
                                          setState(() {
                                            Values.agr = agrigation.naturelle;
                                          });
                                        },
                                      ),
                                    )
                                  ],
                                )),
                                FormLib.myButtonRow(
                                  scrennWidth,
                                  context,
                                  [Values.agroController],
                                  FormLib.Func,
                                  title,
                                  'kg',
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
              ])))
            ],
          )))
    ]));
  }
}
