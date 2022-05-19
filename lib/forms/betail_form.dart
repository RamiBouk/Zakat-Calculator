import 'package:flutter/material.dart';
import 'FormLib.dart';

class BetailForm extends StatefulWidget {
  const BetailForm({Key? key}) : super(key: key);

  @override
  BetailFormState createState() {
    return BetailFormState();
  }
}

class BetailFormState extends State<BetailForm> {
  Widget? f(List<TextEditingController> controller, {var types}) {
    List<int> zakats = [1234, 151, 125];
    return Column(
      children: [
        Table(
          // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: TableBorder.symmetric(
              inside: BorderSide(width: 1, color: Colors.grey),
              outside: BorderSide(width: 1)),
          defaultColumnWidth: FixedColumnWidth(150),

          children: [
            TableRow(
              decoration: BoxDecoration(color: Colors.green),
              children: [
                Column(
                  children: [
                    Text(
                      'Type',
                      style: TextStyle(
                        fontFamily: 'Sunflower',
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 20,
                        decoration: TextDecoration.none,
                        // fontStyle: FontStyle.italic,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('Zakat',
                        style: TextStyle(
                          fontFamily: 'Sunflower',
                          color: Colors.black,
                          //fontWeight: FontWeight.bold,
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          // fontStyle: FontStyle.italic,
                        ))
                  ],
                ),
              ],
            ),
            TableRow(
              children: [
                Column(
                  children: [
                    Text('Chameux:',
                        style: TextStyle(
                          fontFamily: 'Sunflower',
                          color: Colors.black,
                          //fontWeight: FontWeight.bold,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          // fontStyle: FontStyle.italic,
                        ))
                  ],
                ),
                Column(
                  children: [
                    Text(zakats[0].toString() + ' Chameux',
                        style: TextStyle(
                          fontFamily: 'Sunflower',
                          color: Colors.black,
                          //fontWeight: FontWeight.bold,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          // fontStyle: FontStyle.italic,
                        )),
                  ],
                ),
              ],
            ),
            TableRow(
              children: [
                Column(
                  children: [
                    Text('Boives:',
                        style: TextStyle(
                          fontFamily: 'Sunflower',
                          color: Colors.black,
                          //fontWeight: FontWeight.bold,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          // fontStyle: FontStyle.italic,
                        ))
                  ],
                ),
                Column(
                  children: [
                    Text(zakats[1].toString() + ' Boives',
                        style: TextStyle(
                          fontFamily: 'Sunflower',
                          color: Colors.black,
                          //fontWeight: FontWeight.bold,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          // fontStyle: FontStyle.italic,
                        )),
                  ],
                ),
              ],
            ),
            TableRow(
              children: [
                Column(
                  children: [
                    Text('Oves:',
                        style: TextStyle(
                          fontFamily: 'Sunflower',
                          color: Colors.black,
                          //fontWeight: FontWeight.bold,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          // fontStyle: FontStyle.italic,
                        ))
                  ],
                ),
                Column(
                  children: [
                    Text(zakats[2].toString() + ' Oves',
                        style: TextStyle(
                          fontFamily: 'Sunflower',
                          color: Colors.black,
                          //fontWeight: FontWeight.bold,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          // fontStyle: FontStyle.italic,
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
        Container()
      ],
    );
  }

  Widget myText(String text) {
    return Text(
      text,
      style: TextStyle(decoration: TextDecoration.none, fontSize: 19),
    );
  }

  final types = null;
  final camelController = TextEditingController();
  final cowsController = TextEditingController();
  final chickenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double scrennWidth = MediaQuery.of(context).size.width;
    return Form(
        child: Table(children: [
      TableRow(children: [
        FormLib.myText('Nombre de chameux :'),
      ]),
      TableRow(children: [
        FormLib.myTextField(controller: camelController, autofocus: true)
      ]),
      TableRow(children: [
        FormLib.myText('Nombre de boives :'),
      ]),
      TableRow(children: [FormLib.myTextField(controller: cowsController)]),
      TableRow(children: [
        FormLib.myText('Nombre d\'oves:'),
      ]),
      TableRow(children: [
        FormLib.myTextField(controller: chickenController, last: true)
      ]),
      TableRow(children: [
        FormLib.myButtonRow(
          scrennWidth,
          context,
          [camelController],
          FormLib.Func,
          "OR",
          'g',
        )
      ])
    ]));
  }
}
