import 'package:flutter/material.dart';
import 'package:widgets/core/lorem_picture.dart';

class ChoiceChipHome extends StatefulWidget {
  const ChoiceChipHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ChoiceChipHome> createState() => _ChoiceChipHomeState();
}

class _ChoiceChipHomeState extends State<ChoiceChipHome> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ChoiceChip(
          avatar: Image.asset("assets/images/logo.jpg"),
          label: const Text("Choice Chip"),
          selected: _isSelected,
          onSelected: (newBoolValue) {
            setState(() {
              _isSelected = newBoolValue;
            });
          },
        ),
      ),
    );
  }
}
