import 'package:flutter/material.dart';

class FutureHome extends StatefulWidget {
  const FutureHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<FutureHome> createState() => _FutureHomeState();
}

class _FutureHomeState extends State<FutureHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text(
            "Get Data!!",
          ),
          onPressed: () async {
            //eğer bu kısma async koyar ve altına await eklersek 1.task çalıştıktan sonra 2'ye geçer ve orada 3 saniye bekledikten sonra 3.taska geçer
            print("1. task ");
            //network request to get current weather
            final weather = await getData();
            //   await Future.delayed(const Duration(seconds: 3), () {
            // return "Raining"; //bu durumda console da 1 ve 3 hemen görünecek ama 2 numara 3 saniye sonra ekrana yansıyaca
            // });
            print("3. task($weather)");
          },
        ),
      ),
    );
  }
}

Future<String> getData() async {
  //network request to get current weather
  await Future.delayed(const Duration(seconds: 3));
  return "Raining";
}
