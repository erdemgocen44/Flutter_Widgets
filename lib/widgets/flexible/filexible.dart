import 'package:flutter/material.dart';

class FlexibleHome extends StatefulWidget {
  const FlexibleHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<FlexibleHome> createState() => _FlexibleHomeState();
}

class _FlexibleHomeState extends State<FlexibleHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              //istersek flex koduyle expanded gibi değer verek büyüklüğünü ayarlayabiliriz
              //istersek height değeri vererek büyüklüğünü ayarlayabiliriz
              //yada flexfit ile ekrana yayabiliriz
              //3 değeride kullandım.
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.blue,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                color: Colors.orange,
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
