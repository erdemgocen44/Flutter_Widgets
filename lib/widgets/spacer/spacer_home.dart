import 'package:flutter/material.dart';

class SpacerHome extends StatefulWidget {
  const SpacerHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<SpacerHome> createState() => _SpacerHomeState();
}

class _SpacerHomeState extends State<SpacerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //bu widget sayesinde ikiwidget arasında mümkün olduğunca fazla boşluk bırakmamıza izin verecek
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              color: Colors.blueAccent,
            ),
            const Spacer(),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              color: Colors.orangeAccent,
            ),
            const Spacer(),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
