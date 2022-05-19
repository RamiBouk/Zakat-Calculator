import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecepientPage extends StatefulWidget {
  const RecepientPage({Key? key}) : super(key: key);

  @override
  State<RecepientPage> createState() => _RecepientPageState();
}

class _RecepientPageState extends State<RecepientPage> {
  final myController = TextEditingController();

  final String title = 'Les Recepient de zakat';

  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.startFloat,
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
                  child: Icon(Icons.arrow_back_ios_new)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            body: Container(
                color: Color(0xfff9ecb6).withOpacity(0.6),
                child: Stack(children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      "images/textPage.png",
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Center(
                      child: Container(
                          child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 140,
                      ),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              title,
                              style: TextStyle(
                                fontFamily: 'Sunflower',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                decoration: TextDecoration.none,
                                //         fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                  children: [
                                TextSpan(
                                    text:
                                        ' \ \ Le Zakat doit bénéficier, selon le verset 60 de la sourate 9 à huit catégories de personnes :\n' +
                                            '\n' +
                                            ''),
                                TextSpan(
                                    text: '1.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                TextSpan(text: ' Les pauvres.\n' + ''),
                                TextSpan(
                                    text: '2.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                TextSpan(
                                    text:
                                        'Les indigents. Pour le différencier du pauvre, selon Sahih al-Bukhari l\'indigent est celui dont on ne soupçonne pas la pauvreté et qui ne demande pas l\'aumône.\n' +
                                            ''),
                                TextSpan(
                                    text: '3.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                TextSpan(
                                    text:
                                        'Les collecteurs et gestionnaires du Zakat lui-même.\n' +
                                            ''),
                                TextSpan(
                                    text: '4.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                TextSpan(
                                    text: 'Les nouveaux convertis.\n' + ''),
                                TextSpan(
                                    text: '5.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                TextSpan(
                                    text:
                                        'L’affranchissement des esclaves musulmans.\n' +
                                            ''),
                                TextSpan(
                                    text: '6.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                TextSpan(text: 'Les endettés.\n' + ''),
                                TextSpan(
                                    text: '7.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                TextSpan(
                                    text:
                                        'Ceux qui luttent pour la voie de Dieu, incluant la guerre sainte, la logistique ou ce qui est d\'utilité publique.\n' +
                                            ''),
                                TextSpan(
                                    text: '8.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                TextSpan(
                                  text: 'Les voyageurs.',
                                )
                              ])),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ])))
                    ],
                  )))
                ]))));
  }
}
