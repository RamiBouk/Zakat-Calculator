import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_application_1/Value.dart';

double roundDouble(double value) {
  double mod = 100;
  return ((value * mod).round().toDouble() / mod);
}
/*
1/ l'argent : le quorum au-delà de 595g
2/ l'or : le quorum :
. Au-delà de 85g pour l'or de 24 carats
. Au-delà de 97g pour l'or de 21 carats
. Au-delà de 113g pour l'or de18 carats
La quote-part =2.5%=1/40
*/

class FormLib {
  static final int quorum = 100;
  static double getNumber(TextEditingController? controller) {
    double ammount;
    String amountString = controller!.text;
    if (amountString == '') {
      ammount = 0;
    } else {
      ammount = double.parse(amountString);
    }
    return double.parse((ammount).toStringAsFixed(2));
  }

  static String calcNumer(double ammount) {
    if (ammount < quorum)
      return '';
    else
      return double.parse((ammount / 40).toStringAsFixed(2)).toString();
  }

  static String calcGold(double ammount, var carat) {
    var quorum;
    if (carat == carats.c24) quorum = 85;
    if (carat == carats.c21) quorum = 97;
    if (carat == carats.c18) quorum = 113;

    if (ammount < quorum)
      return '';
    else
      return double.parse((ammount / 40).toStringAsFixed(2)).toString();
  }

  static String calcSilver(double ammount) {
    var quorum = 595;
    if (ammount < quorum)
      return '';
    else
      return double.parse((ammount / 40).toStringAsFixed(2)).toString();
  }

  static String calcAgro(double ammount, var agr, bool wheet) {
    if (wheet && ammount < 625) return "";
    if (agr == agrigation.artificielle)
      return double.parse((ammount / 20).toStringAsFixed(2)).toString();
    else
      return double.parse((ammount / 10).toStringAsFixed(2)).toString();
  }

  static String calcCamel(int ammount) {
    List<int> quorums = [5, 25, 35, 45, 60, 75, 90, 120];
    List<String> amounts = [
      '',
      '',
      'chamelle d’un an',
      'chamelle de deux ans',
      'chamelle de trois ans',
      'chamelle de quatre ans',
      '2 chamelles de deux ans',
      '2 chamelles de quatre ans',
    ];
    for (int i = 0; i < 8; i++)
      if (ammount < quorums[i]) {
        if (i == 1)
          return ((ammount ~/ 5).toString() +
              " Mouton" +
              ((ammount ~/ 5 > 1) ? "s" : ""));
        else
          return amounts[i];
      }
    int l = (((50 - ammount % 50) % 50) ~/ 10);
    int H = (ammount - l * 40) ~/ 50;
    if (l == 0)
      return H.toString() + " chamelle" + ((H > 1) ? "s" : "") + " (3 ans)";
    if (H == 0)
      return l.toString() + " chamelle" + ((l > 1) ? "s" : "") + " (2 ans)";
    return l.toString() +
        " chamelle" +
        ((l > 1) ? "s" : "") +
        " (2 ans)\n" +
        H.toString() +
        " chamelle" +
        ((H > 1) ? "s" : "") +
        " (3 ans)";
  }

  static String calcSheep(int ammount) {
    List<int> quorums = [40, 120, 200, 400];
    List<String> amounts = ['', '1 mouton', '2 moutons', '3 moutons'];
    for (int i = 0; i < 4; i++)
      if (ammount < quorums[i]) {
        return amounts[i];
      }

    return (ammount ~/ 100).toString() +
        " mouton" +
        ((ammount ~/ 100 > 1) ? "s" : "");
  }

  static String calcCow(int ammount) {
    List<int> quorums = [30, 40, 60, 70, 80, 90, 100, 120, 130];
    List<String> amounts = [
      '',
      'Un veau(1 ans)', //veau(x)1
      'Une vache(2 ans)', //vache2
      'Deux Veaux', //1
      'Une vache\n' + 'Un veau(1 ans)',
      'Deux vaches(2 ans)',
      'Trois Veaux',
      'Une vache(2 ans)\n' + 'Deux veaux(1 ans)',
      'Trois vache(2 ans)\n' + 'Quatre veaux(1 ans)'
    ];
    for (int i = 0; i < 9; i++)
      if (ammount < quorums[i]) {
        return amounts[i];
      }
    var l = ((40 - ammount % 40) % 40) ~/ 10;
    var H = (ammount - l * 30) ~/ 40;

    // return (H == 0 ? '' : H.toString() + "Mo\n") +
    //     (l == 0 ? '' : l.toString() + 'T');
    if (l == 0)
      return H.toString() + " vache" + ((H > 1) ? "" : "s") + " (2 ans)";
    if (H == 0) return l.toString() + "veu" + ((l > 1) ? "" : "x") + " (1 ans)";
    return l.toString() +
        " veu" +
        ((l > 1) ? "x" : "") +
        " (1 ans)\n" +
        H.toString() +
        " vache" +
        ((H > 1) ? "s" : "") +
        " (2 ans)";
  }

  static Widget Func(List<TextEditingController>? controller, String type,
      String unit, var quorum) {
    var output;
    bool input = true;
    bool zakat = false;
    String amountString = 'null';
    switch (type) {
      case "Numéraires":
        if (FormLib.getNumber(Values.numerController) == 0) {
          input = false;
          break;
        }
        zakat = true;
        amountString = calcNumer(FormLib.getNumber(Values.numerController));
        break;
      case "Or":
        if (FormLib.getNumber(Values.orController) == 0) {
          input = false;
          break;
        }
        zakat = true;
        amountString =
            calcGold(FormLib.getNumber(Values.orController), Values.car);
        break;

      case "Argent":
        if (FormLib.getNumber(Values.argentController) == 0) {
          input = false;
          break;
        }
        zakat = true;
        amountString = calcSilver(FormLib.getNumber(Values.argentController));
        break;

      case "Bovins":
        if (FormLib.getNumber(Values.cowController) == 0) {
          input = false;
          break;
        }
        zakat = true;
        amountString = calcCow(FormLib.getNumber(Values.cowController).toInt());
        break;

      case "Chameux":
        if (FormLib.getNumber(Values.camelController) == 0) {
          input = false;
          break;
        }
        zakat = true;
        amountString =
            calcCamel(FormLib.getNumber(Values.camelController).toInt());
        break;

      case "Ovins":
        if (FormLib.getNumber(Values.sheepController) == 0) {
          input = false;
          break;
        }
        zakat = true;
        amountString =
            calcSheep(FormLib.getNumber(Values.sheepController).toInt());
        break;

      case "Agricoles":
        if (FormLib.getNumber(Values.agroController) == 0) {
          input = false;
          break;
        }
        zakat = true;
        amountString = calcAgro(
            FormLib.getNumber(Values.agroController), Values.agr, Values.wheet);
        break;
      default:
    }

    if (!input)
      output = "Saiser an number s'il vous plait ";
    else {
      if (amountString != '' && amountString != "0.0")
        output = amountString + " " + unit;
      else
        output = "Rien! le qurom n'est pas attent";
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            child: zakat
                ? Text("Votre Zakat:",
                    style: TextStyle(
                      fontFamily: 'Sunflower',
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 25,
                      decoration: TextDecoration.none,

                      // fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center)
                : SizedBox()),
        SizedBox(
          height: 10,
        ),
        Container(
            child: Text(output,
                style: TextStyle(
                  fontFamily: 'Sunflower',
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                  fontSize: 30,
                  decoration: TextDecoration.none,
                  // fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center)),
      ],
    );
  }

  static double goodWidth(double screenwidth) {
    if (screenwidth < 400)
      return 0.95 * screenwidth;
    else
      return 380;
  }

  static double n = 0;
  static Widget myText(String text) {
    return Container(
      alignment: Alignment.center,
      child: AutoSizeText(
        text,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontFamily: 'Sunflower',
            fontSize: 20),
      ),
    );
  }

  static void clear(List<TextEditingController>? textControllers) {
    if (textControllers != null)
      textControllers.forEach((element) => element.clear());
  }

  static Widget myTextField(
      {String? name,
      TextEditingController? controller,
      bool? autofocus,
      bool? last,
      String? unit}) {
    var aF, iA;
    if (last == true)
      iA = TextInputAction.done;
    else
      iA = TextInputAction.next;
    if (autofocus == true)
      aF = true;
    else
      aF = false;
    return Container(
      //color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: TextFormField(
        autofocus: aF,
        controller: controller,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 17,
          height: 1,
        ),
        decoration: new InputDecoration(
          suffixText: unit,
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        textInputAction: iA,
      ),
    );
  }

  static Widget myButtonRow(
      double screenWidth,
      BuildContext context,
      List<TextEditingController>? textControllers,
      Function f,
      String type,
      String unit) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          margin: const EdgeInsets.all(10.0),
          width: goodWidth(screenWidth) * 0.4,
          child: ElevatedButton(
              onPressed: () => FormLib.clear(textControllers),
              child: myText('Effacer'),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffffa382), onPrimary: Colors.black))),
      Container(
        margin: const EdgeInsets.all(10.0),
        width: goodWidth(screenWidth) * 0.4,
        child: ElevatedButton(
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Dialog(
                    backgroundColor: Colors.transparent,
                    insetPadding: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Container(
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.lightGreen,
                            ),
                            height: 250,
                            padding: EdgeInsets.fromLTRB(5, 20, 5, 10),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 24,
                                  width: screenWidth * 0.92,
                                ),
                                f(textControllers, type, unit, quorum)
                              ],
                            ),
                          ),
                          Positioned(
                            //top: 200,
                            bottom: -25,
                            right: 50,
                            child: Container(
                              height: 50,
                              width: 100,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xffffa382),
                                    onPrimary: Colors.black),
                                onPressed: () =>
                                    Navigator.pop(context, 'close'),
                                child: myText('Fermer'),
                              ),
                            ),
                          ),
                          Positioned(
                              top: -90,
                              child: Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "images/green-check-icon.png"),
                                          fit: BoxFit.fill)))),
                        ],
                      ),
                    ))),
            child: myText('Calculer'),
            style: ElevatedButton.styleFrom(
                primary: Color(0xffcbe8ba), onPrimary: Colors.black)),
      ),
    ]);
  }
}
