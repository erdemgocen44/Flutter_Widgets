import 'package:flutter/material.dart';

class StreamBuilderHome2 extends StatefulWidget {
  const StreamBuilderHome2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<StreamBuilderHome2> createState() => _StreamBuilderHome2State();
}

class _StreamBuilderHome2State extends State<StreamBuilderHome2> {
  late Stream<int?> numbersStream;
  @override
  void initState() {
    super.initState();
    numbersStream = getNumber();
  }

  Stream<int?> getNumber() async* {
    await Future.delayed(const Duration(seconds: 4));

    yield 1;
    await Future.delayed(const Duration(seconds: 1));

    yield 2;
    await Future.delayed(const Duration(seconds: 1));

    yield 3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh_rounded),
        onPressed: () {
          setState(() {
            numbersStream = getNumber();
          });
        },
      ),
      body: Center(
        child: StreamBuilder(
          stream: numbersStream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text(
                'Wait Please',
                style: TextStyle(fontSize: 45, color: Colors.purple),
              );
            } else if (snapshot.hasData) {
              Object number = snapshot.data!;
              return Text(
                '$number',
                style: TextStyle(fontSize: 45, color: Colors.red),
              );
            } else {
              return const Text('No data!!');
            }
          },
        ),
      ),
    );
  }
}
