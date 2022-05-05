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
                title: const Text(
                  'Erdem GÖÇEN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                contentPadding: const EdgeInsets.all(20.0),
                children: [
                  const Text(
                    'More information!!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Close!!',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    ),
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
