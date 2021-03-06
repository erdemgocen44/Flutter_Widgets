import 'package:flutter/material.dart';

class StreamBuilderHome extends StatefulWidget {
  const StreamBuilderHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<StreamBuilderHome> createState() => _StreamBuilderHomeState();
}

//Fake FireBase Sistemi kuralım...

Stream<int> generateStream = (() async* {
  await Future<void>.delayed(const Duration(seconds: 2));
  yield 1;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 2;
  //bu noktaya istersek throw atabiliriz....
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 3;
})();

class _StreamBuilderHomeState extends State<StreamBuilderHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: StreamBuilder(
          stream: generateStream,
          initialData: 0,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            }

            if (snapshot.hasError) {
              return const Text("Error !!!");
            } else {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 50, color: Colors.redAccent),
              );
            }
          },
        ),
      ),
    );
  }
}
