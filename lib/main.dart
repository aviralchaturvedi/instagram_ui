import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/screens/home.dart';
import 'package:instagram_ui_clone/screens/reg.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    initialRoute: "home",
    routes: {
      "home": (context) => Myhome(),
      "reg": (context) => Myreg(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
