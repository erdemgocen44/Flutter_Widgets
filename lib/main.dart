import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(Widgets());

class Widgets extends StatelessWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: routes,
    );
  }
}

var routes = <String, WidgetBuilder>{
  "/homepage": (BuildContext context) => HomePage(),
};
