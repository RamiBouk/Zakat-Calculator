import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DefPage extends StatefulWidget {
  const DefPage({Key? key}) : super(key: key);

  @override
  State<DefPage> createState() => _DefPageState();
}

class _DefPageState extends State<DefPage> {
  final myController = TextEditingController();

  final String title = 'Zakat dans le Quraan et Sunna';

  Widget build(BuildContext context) {
    double scrennWidth = MediaQuery.of(context).size.width;
    return Material(
        child: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
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
          child: Container(
              child: Column(
            children: <Widget>[
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                Container(
                    width: scrennWidth,
                    //      height: 50,
                    child: Stack(
                      children: [
                        Image.asset("images/textPage.png"),
                        Center(
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 200, 20, 20),
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
                                )))
                      ],
                    )),
                Container(
                  padding: EdgeInsets.all(20),
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          children: [
                        TextSpan(
                            style: TextStyle(
                                fontFamily: 'Sunflower',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                            text: 'Quraan\n'),
                        TextSpan(
                            text: 'Le Quraan traite de la charit?? dans de nombreux versets, dont certains se rapportent ?? la zakat. Le mot zakat, avec le sens utilis?? dans l\'Islam actuel' +
                                ', se trouve, par exemple, dans les sourates : 7:156, 9:60, 19:31, 19:55, 21:73, 23:4, 27:3, 30 :39, 31:4 et 41:7. La zakat se trouve dans les premi??res sourates de M??dine et est d??crite comme obligatoire pour les musulmans.' +
                                ' Il est donn?? pour le salut. Les musulmans croient que ceux qui donnent la zakat peuvent s\'attendre ?? une r??compense de Dieu dans l\'au-del??, tandis que n??gliger de donner la zakat peut entra??ner la damnation. ' +
                                'La Zakat est consid??r??e comme faisant partie de l\'alliance entre Dieu et un musulman.\n' +
                                '\n' +
                                'Le verset 2.177 (traduction Picktall) r??sume la vision coranique de la charit?? et de l\'aum??ne (un autre nom pour Zakat est le ????pauvre d??????):\n' +
                                '\n' +
                                'Ce n\'est pas par justice que vous tournez vos visages vers l\'Orient et l\'Occident ; mais juste est celui qui croit en Allah et au Jour dernier et aux anges et aux Ecritures et aux Proph??tes; et donne sa richesse, pour l\'amour de lui,' +
                                ' aux parents et aux orphelins et aux n??cessiteux et au voyageur et ?? ceux qui demandent, et pour lib??rer les esclaves; et observe le culte appropri?? et paie le d?? aux pauvres. ' +
                                'Et ceux qui gardent leur trait?? quand ils en font un, et le patient dans la tribulation et l\'adversit?? et le temps de stress. Tels sont ceux qui sont sinc??res. Tels sont les craignant Dieu. - 2:177\n' +
                                '\n' +
                                'Selon Yusuf al-Qaradawi, le verset 9.5 du Quraan fait de la zakat l\'une des trois conditions pr??alables pour que les pa??ens deviennent musulmans : "mais s\'ils se repentent, ??tablissent des pri??res et pratiquent la zakat, ils sont vos fr??res dans la foi".\n' +
                                '\n' +
                                'Le Quraan ??num??re ??galement qui devrait recevoir les avantages de la zakat, discut?? plus en d??tail ci-dessous.\n' +
                                '\n'),
                        TextSpan(
                            style: TextStyle(
                                fontFamily: 'Sunflower',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                            text: 'Hadith\n'),
                        TextSpan(
                            text: 'Chacune des collections de hadiths les plus fiables de l\'Islam a un livre d??di?? ?? la zakat. Le livre 24 de Sahih Bukhari,le livre 5 de Sahih Muslim, et le livre 9 de Sunan Abu-Dawud discutent de divers aspects de la zakat, y compris qui doit payer,' +
                                ' combien, quand et quoi. Le taux de 2,5% est ??galement mentionn?? dans les hadiths.\n' +
                                '\n' +
                                'Les hadiths avertissent ceux qui ne donnent pas la zakat. Selon le hadith, le refus de payer ou la moquerie de ceux qui paient la zakat est un signe d\'hypocrisie, et Dieu n\'acceptera pas les pri??res de ces personnes. ' +
                                ' La sunna d??crit ??galement la punition de Dieu pour ceux qui refusent ou omettent de payer la zakat. Le jour du Jugement, ceux qui n\'ont pas donn?? la zakat seront tenus pour responsables et punis.\n' +
                                '\n' +
                                'Les hadiths contiennent des conseils sur la collecte autoris??e par l\'??tat de la zakat. Les percepteurs sont tenus de ne pas prendre plus que ce qui est d??, et ceux qui paient la zakat sont pri??s de ne pas se soustraire au paiement. ' +
                                ' Le hadith met ??galement en garde contre la punition de ceux qui prennent la zakat alors qu\'ils ne sont pas ??ligibles pour la recevoir (voir la distribution ci-dessous).'),
                        TextSpan(text: '\n\n\n\n'),
                      ])),
                ),
              ])))
            ],
          ))),
    ));
  }
}
