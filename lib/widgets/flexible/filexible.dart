import 'package:flutter/material.dart';

class FlexibleHome extends StatefulWidget {
  const FlexibleHome({Key? key}) : super(key: key);

  @override
  State<FlexibleHome> createState() => _FlexibleHomeState();
}

class _FlexibleHomeState extends State<FlexibleHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Flexible(
              //istersek flex koduyle expanded gibi değer verek büyüklüğünü ayarlayabiliriz
              //istersek height değeri vererek büyüklüğünü ayarlayabiliriz
              //yada flexfit ile ekrana yayabiliriz
              child: Container(
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
              fit: FlexFit.tight,
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
