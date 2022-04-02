import 'package:flutter/material.dart';

class AlertDialogHome extends StatefulWidget {
  const AlertDialogHome({Key? key}) : super(key: key);

  @override
  State<AlertDialogHome> createState() => _AlertDialogHomeState();
}

class _AlertDialogHomeState extends State<AlertDialogHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("Show Alert Dialog"),
          onPressed: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Close"),
                )
              ],
              title: const Text("Flutter is Life!!"),
              elevation: 15,
            ),
          ),
        ),
      ),
    );
  }
}
