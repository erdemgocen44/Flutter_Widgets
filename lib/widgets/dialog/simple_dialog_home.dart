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
              builder: (context) => SimpleDialog(
                title: const Text('Erdem GÖÇEN'),
                contentPadding: EdgeInsets.all(20.0),
                children: [
                  const Text('More information!!'),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close!!'),
                  ),
                ],
              ),
            );
          },
          child: const Text('Show Dialog'),
        ),
      ),
    );
  }
}
