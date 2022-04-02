import 'package:flutter/material.dart';

class SelectablePage extends StatefulWidget {
  const SelectablePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<SelectablePage> createState() => _SelectablePageState();
}

class _SelectablePageState extends State<SelectablePage> {
  String selectedText = "";
  final String _selectableText = "Lütfen bu texti seçiniz!!!";
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(selectedText, style: _styleBlue),
            TextSelectionTheme(
              data: const TextSelectionThemeData(
                  selectionColor: Colors.amberAccent),
              child: SelectableText(
                //bu widget sayesinde uygulamaya eklediğimiz textler seçilebilir olur.
                _selectableText,
                style: _style,
                onSelectionChanged: (selection, cause) {
                  setState(() {
                    selectedText = _selectableText.substring(
                        selection.start, selection.end);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
