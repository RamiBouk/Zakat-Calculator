import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConditionPage extends StatefulWidget {
  const ConditionPage({Key? key}) : super(key: key);

  @override
  State<ConditionPage> createState() => _ConditionPageState();
}

class _ConditionPageState extends State<ConditionPage> {
  final myController = TextEditingController();

  final String title = 'Conditions de Zakat';

  Widget build(BuildContext context) {
    double scrennWidth = MediaQuery.of(context).size.width;
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
              child: Container(
                  child: Column(children: <Widget>[
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
                                    padding:
                                        EdgeInsets.fromLTRB(20, 200, 20, 20),
                                    child: Hero(
                                        tag: title,
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
                                        ))))
                          ],
                        )),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Sunflower',
                                  //      fontWeight: FontWeight.bold,
                                  fontSize: 17),
                              children: [
                            TextSpan(
                                style: TextStyle(
                                    fontFamily: 'Sunflower',
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                text: '  Les r??gles de la Zak??t :  \n'),
                            TextSpan(text: '    \n'),
                            TextSpan(
                                text:
                                    '  La Zak??t est une obligation pour tous ceux qui remplissent les conditions suivantes :  \n'),
                            TextSpan(
                                text:
                                    '  1) Etre musulman. On ne demande pas au m??cr??ant de payer la Zak??t. Celui-ci sera jug?? le jour de la R??surrection pour ne pas l\'avoir pay??e, car selon l\'avis correct, les m??cr??ants seront interrog??s sur le respect des r??gles de la Charia.  \n'),
                            TextSpan(
                                text:
                                    '  2) Etre libre. Le pr??l??vement de la Zak??t n\'est pas obligatoire sur l\'argent de l\'esclave, mais il est obligatoire sur l\'argent du d??ment et de l\'enfant.  \n'),
                            TextSpan(
                                text:
                                    '  3) Poss??der le nis??b (somme minimum l??gale ?? partir de laquelle on doit payer la Zak??t). Nous d??terminerons plus loin le nis??b de chaque cat??gorie de biens. Donc, si la somme d\'argent ne d??passe pas le nis??b, il n\'y a pas de Zak??t ?? payer sauf en ce qui se rapporte ?? al-rik??z (tr??sors de minerais enfouis).  \n'),
                            TextSpan(
                                text:
                                    '  4) La continuit?? du nis??b. Le pr??l??vement de la Zak??t n\'est pas obligatoire sur la part du sp??culateur avant la r??partition de l\'argent.  \n'),
                            TextSpan(
                                text:
                                    '  5) L\'??coulement d\'al-hawl (p??riode d\'une ann??e enti??re en possession d\'une certaine somme d\'argent) pour la monnaie, les biens commerciaux et les animaux du cheptel. Quant aux c??r??ales, aux fruits, ce qui sort de terre, la production des p??turages, les b??n??fices commerciaux et al-rik??z, il faut payer la Zak??t dessus m??me si al-hawl n\'a pas ??t?? atteint.  \n'),
                            TextSpan(
                                text:
                                    '  En d\'autres termes, la Zak??t est obligatoire pour tout musulman libre ayant totalement en sa possession le nis??b et ayant atteint al-hawl, qu\'il soit jeune ou vieux, sain d\'esprit ou d??ment, si ce n\'est que le jeune et le fou ne sont pas eux-m??mes responsables du paiement de leur Zak??t, mais que c\'est leur tuteur qui doit la payer.  \n'),
                            TextSpan(text: '    \n'),
                            TextSpan(
                              text:
                                  '  Les biens soumis au paiement de la Zak??t :  \n',
                              style: TextStyle(
                                  fontFamily: 'Sunflower',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            TextSpan(text: '    \n'),
                            TextSpan(
                                text:
                                    '  1) Les deux m??taux pr??cieux (l\'or et l\'argent) et la monnaie.  \n'),
                            TextSpan(text: '  2) Les biens commerciaux.  \n'),
                            TextSpan(text: '  3) Les b??tes de cheptel.  \n'),
                            TextSpan(
                                text:
                                    '  4) Tout ce qui sort de la terre comme les c??r??ales et les fruits.  \n'),
                            TextSpan(
                                text:
                                    '  Nous nous concentrerons dans ce qui suit sur la monnaie et les biens commerciaux.  \n'),
                            TextSpan(text: '    \n'),
                            TextSpan(
                              text:
                                  '  Le nis??b de la Zak??t sur la monnaie et les biens commerciaux :  \n',
                              style: TextStyle(
                                  fontFamily: 'Sunflower',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            TextSpan(text: '    \n'),
                            TextSpan(
                                text:
                                    '  1) L\'or : son nis??b est de vingt mithq??l-s (unit?? de mesure). Ce qui ??quivaut ?? peu pr??s ?? 85 grammes.  \n'),
                            TextSpan(
                                text:
                                    '  2) L\'argent : son nis??b est de deux cent dirhams, c\'est-??-dire environ 595 grammes.  \n'),
                            TextSpan(
                                text:
                                    '  3) La monnaie : il y a divergence quant ?? son nis??b et l\'avis le plus correct est de prendre le nis??b le plus avantageux pour les pauvres. Voici un exemple : si le prix du gramme d\'or est de 50 riyals et que le prix de l\'argent est de 1 riyal, si l\'on se base sur l\'or cela donne : 85 x 50 = 4250 riyals ; et si on se base sur l\'argent cela donne : 1 x 595 = 595 riyals. Se baser sur l\'argent est plus avantageux pour les pauvres. Donc, celui qui poss??de 595 riyals ou plus poss??de le nis??b et doit payer la Zak??t. Certains savants se basent aujourd\'hui uniquement sur l\'or et pas sur l\'argent, car l\'argent a peu de valeur et celui qui poss??de 595 riyals n\'est pas consid??r?? comme riche.  \n'),
                            TextSpan(text: '    \n'),
                            TextSpan(
                              text:
                                  '  La Zak??t sur les biens commerciaux :  \n',
                              style: TextStyle(
                                  fontFamily: 'Sunflower',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            TextSpan(text: '    \n'),
                            TextSpan(
                                text:
                                    '  Les biens commerciaux sont des biens destin??s ?? la vente comme les voitures, les machines et d\'autres marchandises que l\'on ach??te avec l\'intention de les revendre et de faire du commerce avec et non pas avec l\'intention de les utiliser. Lorsque al-hawl est atteint, le commer??ant doit calculer la valeur commerciale de ses marchandises au moment o?? il doit payer la Zak??t et non pas leur valeur au moment o?? il les a achet??es, car le prix de ces marchandises a peut ??tre augment?? et dans ce cas, ce serait une injustice pour les pauvres de calculer leur valeur en se basant sur leur prix au moment de l\'achat ou au contraire une injustice pour le commer??ant si elles ont perdu de leur valeur. L\'estimation se fait au prix de d??tail pour ceux qui vendent au d??tail, au prix de gros pour ceux qui vendent en gros et au prix moyen pour ceux qui vendent au d??tail et en gros.  \n'),
                            TextSpan(
                                text:
                                    '  Remarque : il arrive qu\'un homme ach??te une marchandise avec l\'intention de la revendre et de r??aliser un profit mais, n\'ayant pu la vendre, d??cide de l\'utiliser. Inversement, un homme peut acheter une marchandise pour s\'en servir mais peu satisfait de cette marchandise, il d??cide de la vendre. Dans ces deux cas de figure, faut-il payer la Zak??t sur la marchandise ?  \n'),
                            TextSpan(
                                text:
                                    '  Le facteur d??terminant ici est l\'intention initiale. Si l\'intention initiale lors de l\'achat de cette marchandise ??tait de la revendre et d\'en faire un commerce, elle est alors consid??r??e comme un bien commercial et la Zak??t doit ??tre pay??e dessus, m??me si la possibilit?? de l\'utiliser existe.  \n'),
                            TextSpan(
                                text:
                                    '  Par contre, si l\'intention initiale lors de l\'achat de la marchandise ??tait de l\'utiliser, il ne faut pas payer de Zak??t dessus, m??me si la possibilit?? de la revendre existe.  \n'),
                            TextSpan(
                                text:
                                    '  Si quelqu\'un ach??te une marchandise avec l\'intention de l\'utiliser puis un an apr??s, d??cide de la revendre, la marchandise devient un bien commercial ?? partir de ce moment pr??cis et non pas ?? partir du moment o?? elle a ??t?? achet??e. Inversement, si quelqu\'un ach??te une marchandise avec l\'intention d\'en faire un commerce puis que, un an apr??s, il d??cide de l\'utiliser, dans ce cas il n\'y a plus de Zak??t ?? payer sur la marchandise, celle-ci doit ??tre pay??e seulement sur la p??riode ant??rieure.  \n'),
                            TextSpan(text: '    \n'),
                            TextSpan(
                              text: '  La Zak??t sur les actions :  \n',
                              style: TextStyle(
                                  fontFamily: 'Sunflower',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            TextSpan(text: '    \n'),
                            TextSpan(
                                text:
                                    '  Pour r??sumer, disons que celui qui poss??de des parts dans une soci??t?? par actions vise l\'une de ces deux choses :  \n'),
                            TextSpan(
                                text:
                                    '  1) Investir ?? long terme et faire des profits. S\'il se trouve sur le march?? saoudien, il n\'a pas ?? payer la Zak??t sur ses actions, car la soci??t?? le fait pour lui. Cependant, s\'il se trouve sur un autre march?? o?? les soci??t??s ne sont pas tenues de payer la Zak??t, il doit d??terminer le montant de celle-ci en calculant sa part dans les actifs r??els qui sont soumis au paiement de la Zak??t. Cela n\'a rien ?? voir avec la Zak??t sur la valeur marchande. Si cela lui est difficile et qu\'il souhaite se pr??munir, il doit alors payer la Zak??t sur les capitaux des actionnaires qui est de 2,5%.  \n'),
                            TextSpan(
                                text:
                                    '  Les capitaux des actionnaires = total des actifs ??? total des passifs. Le r??sultat multipli?? par 2,5%.  \n'),
                            TextSpan(
                                text:
                                    '  2) Sp??culer sur les actions en attendant que leur valeur augmente pour pouvoir les vendre. Il doit dans ce cas payer la Zak??t sur ses actions lorsqu\'elles atteignent al-hawl comme c\'est le cas avec les biens commerciaux. Il doit se baser sur la valeur marchande des actions et non pas leur valeur nominale ou r??elle et paie la Zak??t des biens commerciaux dessus.  \n'),
                            TextSpan(
                                text:
                                    '  On peut faire la distinction entre l\'investisseur et le sp??culateur. Celui qui a l\'intention de revendre ses actions en l\'espace d\'un an tombe sous la r??gle du sp??culateur et doit payer la Zak??t des biens commerciaux alors que celui qui a l\'intention de revendre ses actions apr??s plus d\'un an est consid??r?? comme un investisseur.  '),
                          ])),
                    )
                  ])),
                )
              ])),
            )));
  }
}
