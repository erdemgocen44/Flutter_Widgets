import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String rota;
  final Color primary;
  final Color onprimary;
  final String yazi;

  const CustomElevatedButton(
      {Key? key,
      required this.rota,
      required this.primary,
      required this.onprimary,
      required this.yazi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, rota);
      },
      style: ElevatedButton.styleFrom(
        elevation: 10.0,
        primary: Colors.amber, // Background color
        onPrimary: Colors.black, // Text Color (Foreground color)
      ),
      child: const Text(
        'Clippers',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
