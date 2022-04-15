import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String rota;
  final Color primary;
  final Color onprimary;
  final String yazi;

  CustomElevatedButton(
      {Key? key,
      required this.rota,
      required this.primary,
      required this.onprimary,
      required this.yazi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, rota);
        },
        style: ElevatedButton.styleFrom(
            elevation: 10.0,
            primary: primary, // Background color ayarla
            onPrimary: onprimary // Text Color (Foreground color)
            ),
        child: Text(
          yazi,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
