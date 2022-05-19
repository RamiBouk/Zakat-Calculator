import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum carats { c24, c21, c18 }
enum agrigation { naturelle, artificielle }

class Values {
  static String numer = '';
  static var numerController = TextEditingController();
  static var orController = TextEditingController();
  static var argentController = TextEditingController();
  static var sheepController = TextEditingController();
  static var cowController = TextEditingController();
  static var camelController = TextEditingController();
  static var agroController = TextEditingController();
  static carats? car = carats.c18;
  static agrigation? agr = agrigation.naturelle;
  static bool wheet = false;
}
