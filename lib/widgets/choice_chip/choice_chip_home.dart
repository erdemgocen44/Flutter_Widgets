import 'package:flutter/material.dart';

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
      body: const Center(
        child: ChoiceChip(label: Text("Choice Chip"), selected: _isSelected),
      ),
    );
  }
}
