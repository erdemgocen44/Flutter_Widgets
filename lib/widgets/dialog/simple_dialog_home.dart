import 'package:flutter/material.dart';

class SimpleDialogHome extends StatefulWidget {
  const SimpleDialogHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<SimpleDialogHome> createState() => _SimpleDialogHomeState();
}

class _SimpleDialogHomeState extends State<SimpleDialogHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => const SimpleDialog(
                        title: Text('Erdem GÖÇEN'),
                      ));
            },
            child: const Text('Show Dialog')),
      ),
    );
  }
}
