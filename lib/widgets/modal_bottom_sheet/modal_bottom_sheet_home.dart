import 'package:flutter/material.dart';

class ModalBottomSheetHome extends StatefulWidget {
  const ModalBottomSheetHome({Key? key}) : super(key: key);

  @override
  State<ModalBottomSheetHome> createState() => _ModalBottomSheetHomeState();
}

class _ModalBottomSheetHomeState extends State<ModalBottomSheetHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
