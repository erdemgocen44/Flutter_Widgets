import 'package:flutter/material.dart';

class WillPopScopeHome extends StatefulWidget {
  const WillPopScopeHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<WillPopScopeHome> createState() => _WillPopScopeHomeState();
}

class _WillPopScopeHomeState extends State<WillPopScopeHome> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          //bu widget sayesinde geri butonu deaktif oluyor
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          title: Text(widget.title),
        ),
        body: const Center(),
      ),
    );
  }
}
