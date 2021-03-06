import 'package:flutter/material.dart';

class CheckBoxListTilePage extends StatefulWidget {
  const CheckBoxListTilePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<CheckBoxListTilePage> createState() => _CheckBoxListTilePageState();
}

class _CheckBoxListTilePageState extends State<CheckBoxListTilePage> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CheckboxListTile(
          title: const Text("Checkbox List Tile Try"),
          value: _isChecked,
          onChanged: (bool? newValue) => setState(() {
            _isChecked = newValue;
          }),
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          controlAffinity: ListTileControlAffinity
              .leading, //bu özellik checkbox ktusunun yerini değiştirir.örneğin leading başa alır....
          tileColor: Colors
              .black12, //bu özellik checkbox satırına renk verir. sanki container içinde gibi
          tristate: true, //bu özellik sayesinde -- işaretide ekleyebilriz
          subtitle: const Text("Subtitle", style: TextStyle(color: Colors.red)),
        ),
      ),
    );
  }
}
