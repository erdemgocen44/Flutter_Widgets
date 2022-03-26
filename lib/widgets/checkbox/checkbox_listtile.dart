import 'package:flutter/material.dart';

class CheckBoxListTilePage extends StatefulWidget {
  const CheckBoxListTilePage({Key? key}) : super(key: key);

  @override
  State<CheckBoxListTilePage> createState() => _CheckBoxListTilePageState();
}

class _CheckBoxListTilePageState extends State<CheckBoxListTilePage> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CheckboxListTile(
          title: const Text("Checkbox List Tile Try"),
          value: _isChecked,
          onChanged: (bool? newValue) => setState(() {
            _isChecked = newValue;
          }),
          activeColor: Colors.orangeAccent,
          checkColor: Colors.black,
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}
