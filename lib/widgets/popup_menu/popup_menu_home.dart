import 'package:flutter/material.dart';

class PopupMenuHome extends StatefulWidget {
  const PopupMenuHome({Key? key}) : super(key: key);

  @override
  State<PopupMenuHome> createState() => _PopupMenuHomeState();
}

class _PopupMenuHomeState extends State<PopupMenuHome> {
  String title = 'First Page';
  String firstPage = 'First Page';
  String secondPage = 'Second Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(firstPage),
                value: firstPage,
              ),
              PopupMenuItem(
                child: Text(secondPage),
                value: secondPage,
              ),
            ],
            onSelected: (String newValue) {
              setState(() {
                title = newValue;
              });
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Yukarıdaki 3 noktadan sayfayı seçiniz',
          style: TextStyle(
            fontSize: 25,
            color: Colors.redAccent,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
