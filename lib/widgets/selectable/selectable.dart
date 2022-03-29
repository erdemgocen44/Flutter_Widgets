import 'package:flutter/material.dart';

class SelectablePage extends StatefulWidget {
  const SelectablePage({Key? key}) : super(key: key);

  @override
  State<SelectablePage> createState() => _SelectablePageState();
}

class _SelectablePageState extends State<SelectablePage> {
  String selectedText = "";
  final String _selectableText = "This is selectable text!!!";
  final TextStyle _styleBlue = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
  final TextStyle _style = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SelectableText(_selectableText),
          ],
        ),
      ),
    );
  }
}
