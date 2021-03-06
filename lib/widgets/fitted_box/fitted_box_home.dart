import 'package:flutter/material.dart';

class FittedBoxHome extends StatefulWidget {
  const FittedBoxHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<FittedBoxHome> createState() => _FittedBoxHomeState();
}

class _FittedBoxHomeState extends State<FittedBoxHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.4,
          color: Colors.redAccent,
          padding: const EdgeInsets.all(10),
          child: const FittedBox(
            //Text widgetı FittedBox ile sardığımızda ne olursa olsun containere uyduruyor.
            //istersek fontu 100 yapalım farketmez,yada containereın height yada witdh
            //containren buyuklugune gore içindekini sığdırıyo
            child: Text(
              "Flutter c'est super!",
              style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
