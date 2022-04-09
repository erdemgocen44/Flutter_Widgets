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
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 3;
})();

class _StreamBuilderHomeState extends State<StreamBuilderHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
