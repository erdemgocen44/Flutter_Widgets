import 'package:flutter/material.dart';
import 'package:widgets/core/lorem_picture.dart';

class SpreadOperatorHome extends StatefulWidget {
  const SpreadOperatorHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<SpreadOperatorHome> createState() => _SpreadOperatorHomeState();
}

class _SpreadOperatorHomeState extends State<SpreadOperatorHome> {
  @override
  Widget build(BuildContext context) {
    List<Widget> imagesList = [
      Image.network(
        resim200,
        height: MediaQuery.of(context).size.height * 0.1,
      ),
      Image.network(
        resim200,
        height: MediaQuery.of(context).size.height * 0.1,
      ),
      Image.network(
        resim200,
        height: MediaQuery.of(context).size.height * 0.1,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(resim200),
            ...imagesList //buraya 3 nokta koyarak List e eklediğimiz tüm elemanları buraya ekleyebiliyoruz...
          ],
        ),
      ),
    );
  }
}
