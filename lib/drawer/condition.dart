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
                                text: '  Les règles de la Zakât :  \n'),
                            TextSpan(text: '    \n'),
                            TextSpan(
                                text:
                                    '  La Zakât est une obligation pour tous ceux qui remplissent les conditions suivantes :  \n'),
                            TextSpan(
                                text:
                                    '  1) Etre musulman. On ne demande pas au mécréant de payer la Zakât. Celui-ci sera jugé le jour de la Résurrection pour ne pas l\'avoir payée, car selon l\'avis correct, les mécréants seront interrogés sur le respect des règles de la Charia.  \n'),
                            TextSpan(
                                text:
                                    '  2) Etre libre. Le prélèvement de la Zakât n\'est pas obligatoire sur l\'argent de l\'esclave, mais il est obligatoire sur l\'argent du dément et de l\'enfant.  \n'),
                            TextSpan(
                                text:
                                    '  3) Posséder le nisâb (somme minimum légale à partir de laquelle on doit payer la Zakât). Nous déterminerons plus loin le nisâb de chaque catégorie de biens. Donc, si la somme d\'argent ne dépasse pas le nisâb, il n\'y a pas de Zakât à payer sauf en ce qui se rapporte à al-rikâz (trésors de minerais enfouis).  \n'),
                            TextSpan(
                                text:
                                    '  4) La continuité du nisâb. Le prélèvement de la Zakât n\'est pas obligatoire sur la part du spéculateur avant la répartition de l\'argent.  \n'),
                            TextSpan(
                                text:
                                    '  5) L\'écoulement d\'al-hawl (période d\'une année entière en possession d\'une certaine somme d\'argent) pour la monnaie, les biens commerciaux et les animaux du cheptel. Quant aux céréales, aux fruits, ce qui sort de terre, la production des pâturages, les bénéfices commerciaux et al-rikâz, il faut payer la Zakât dessus même si al-hawl n\'a pas été atteint.  \n'),
                            TextSpan(
                                text:
                                    '  En d\'autres termes, la Zakât est obligatoire pour tout musulman libre ayant totalement en sa possession le nisâb et ayant atteint al-hawl, qu\'il soit jeune ou vieux, sain d\'esprit ou dément, si ce n\'est que le jeune et le fou ne sont pas eux-mêmes responsables du paiement de leur Zakât, mais que c\'est leur tuteur qui doit la payer.  \n'),
                            TextSpan(text: '    \n'),
                            TextSpan(
                              text:
                                  '  Les biens soumis au paiement de la Zakât :  \n',
                              style: TextStyle(
                                  fontFamily: 'Sunflower',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            TextSpan(text: '    \n'),
                            TextSpan(
                                text:
                                    '  1) Les deux métaux précieux (l\'or et l\'argent) et la monnaie.  \n'),
                            TextSpan(text: '  2) Les biens commerciaux.  \n'),
                            TextSpan(text: '  3) Les bêtes de cheptel.  \n'),
                            TextSpan(
                                text:
                                    '  4) Tout ce qui sort de la terre comme les céréales et les fruits.  \n'),
                            TextSpan(
                                text:
                                    '  Nous nous concentrerons dans ce qui suit sur la monnaie et les biens commerciaux.  \n'),
                            TextSpan(text: '    \n'),
                            TextSpan(
                              text:
                                  '  Le nisâb de la Zakât sur la monnaie et les biens commerciaux :  \n',
                              style: TextStyle(
                                  fontFamily: 'Sunflower',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            TextSpan(text: '    \n'),
                            TextSpan(
                                text:
                                    '  1) L\'or : son nisâb est de vingt mithqâl-s (unité de mesure). Ce qui équivaut à peu près à 85 grammes.  \n'),
                            TextSpan(
                                text:
                                    '  2) L\'argent : son nisâb est de deux cent dirhams, c\'est-à-dire environ 595 grammes.  \n'),
                            TextSpan(
                                text:
                                    '  3) La monnaie : il y a divergence quant à son nisâb et l\'avis le plus correct est de prendre le nisâb le plus avantageux pour les pauvres. Voici un exemple : si le prix du gramme d\'or est de 50 riyals et que le prix de l\'argent est de 1 riyal, si l\'on se base sur l\'or cela donne : 85 x 50 = 4250 riyals ; et si on se base sur l\'argent cela donne : 1 x 595 = 595 riyals. Se baser sur l\'argent est plus avantageux pour les pauvres. Donc, celui qui possède 595 riyals ou plus possède le nisâb et doit payer la Zakât. Certains savants se basent aujourd\'hui uniquement sur l\'or et pas sur l\'argent, car l\'argent a peu de valeur et celui qui possède 595 riyals n\'est pas considéré comme riche.  \n'),
                            TextSpan(text: '    \n'),
                            TextSpan(
                              text:
                                  '  La Zakât sur les biens commerciaux :  \n',
                              style: TextStyle(
                                  fontFamily: 'Sunflower',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            TextSpan(text: '    \n'),
                            TextSpan(
                                text:
                                    '  Les biens commerciaux sont des biens destinés à la vente comme les voitures, les machines et d\'autres marchandises que l\'on achète avec l\'intention de les revendre et de faire du commerce avec et non pas avec l\'intention de les utiliser. Lorsque al-hawl est atteint, le commerçant doit calculer la valeur commerciale de ses marchandises au moment où il doit payer la Zakât et non pas leur valeur au moment où il les a achetées, car le prix de ces marchandises a peut être augmenté et dans ce cas, ce serait une injustice pour les pauvres de calculer leur valeur en se basant sur leur prix au moment de l\'achat ou au contraire une injustice pour le commerçant si elles ont perdu de leur valeur. L\'estimation se fait au prix de détail pour ceux qui vendent au détail, au prix de gros pour ceux qui vendent en gros et au prix moyen pour ceux qui vendent au détail et en gros.  \n'),
                            TextSpan(
                                text:
                                    '  Remarque : il arrive qu\'un homme achète une marchandise avec l\'intention de la revendre et de réaliser un profit mais, n\'ayant pu la vendre, décide de l\'utiliser. Inversement, un homme peut acheter une marchandise pour s\'en servir mais peu satisfait de cette marchandise, il décide de la vendre. Dans ces deux cas de figure, faut-il payer la Zakât sur la marchandise ?  \n'),
                            TextSpan(
                                text:
                                    '  Le facteur déterminant ici est l\'intention initiale. Si l\'intention initiale lors de l\'achat de cette marchandise était de la revendre et d\'en faire un commerce, elle est alors considérée comme un bien commercial et la Zakât doit être payée dessus, même si la possibilité de l\'utiliser existe.  \n'),
                            TextSpan(
                                text:
                                    '  Par contre, si l\'intention initiale lors de l\'achat de la marchandise était de l\'utiliser, il ne faut pas payer de Zakât dessus, même si la possibilité de la revendre existe.  \n'),
                            TextSpan(
                                text:
                                    '  Si quelqu\'un achète une marchandise avec l\'intention de l\'utiliser puis un an après, décide de la revendre, la marchandise devient un bien commercial à partir de ce moment précis et non pas à partir du moment où elle a été achetée. Inversement, si quelqu\'un achète une marchandise avec l\'intention d\'en faire un commerce puis que, un an après, il décide de l\'utiliser, dans ce cas il n\'y a plus de Zakât à payer sur la marchandise, celle-ci doit être payée seulement sur la période antérieure.  \n'),
                            TextSpan(text: '    \n'),
                            TextSpan(
                              text: '  La Zakât sur les actions :  \n',
                              style: TextStyle(
                                  fontFamily: 'Sunflower',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            TextSpan(text: '    \n'),
                            TextSpan(
                                text:
                                    '  Pour résumer, disons que celui qui possède des parts dans une société par actions vise l\'une de ces deux choses :  \n'),
                            TextSpan(
                                text:
                                    '  1) Investir à long terme et faire des profits. S\'il se trouve sur le marché saoudien, il n\'a pas à payer la Zakât sur ses actions, car la société le fait pour lui. Cependant, s\'il se trouve sur un autre marché où les sociétés ne sont pas tenues de payer la Zakât, il doit déterminer le montant de celle-ci en calculant sa part dans les actifs réels qui sont soumis au paiement de la Zakât. Cela n\'a rien à voir avec la Zakât sur la valeur marchande. Si cela lui est difficile et qu\'il souhaite se prémunir, il doit alors payer la Zakât sur les capitaux des actionnaires qui est de 2,5%.  \n'),
                            TextSpan(
                                text:
                                    '  Les capitaux des actionnaires = total des actifs – total des passifs. Le résultat multiplié par 2,5%.  \n'),
                            TextSpan(
                                text:
                                    '  2) Spéculer sur les actions en attendant que leur valeur augmente pour pouvoir les vendre. Il doit dans ce cas payer la Zakât sur ses actions lorsqu\'elles atteignent al-hawl comme c\'est le cas avec les biens commerciaux. Il doit se baser sur la valeur marchande des actions et non pas leur valeur nominale ou réelle et paie la Zakât des biens commerciaux dessus.  \n'),
                            TextSpan(
                                text:
                                    '  On peut faire la distinction entre l\'investisseur et le spéculateur. Celui qui a l\'intention de revendre ses actions en l\'espace d\'un an tombe sous la règle du spéculateur et doit payer la Zakât des biens commerciaux alors que celui qui a l\'intention de revendre ses actions après plus d\'un an est considéré comme un investisseur.  '),
                          ])),
                    )
                  ])),
                )
              ])),
            )));
  }
}
