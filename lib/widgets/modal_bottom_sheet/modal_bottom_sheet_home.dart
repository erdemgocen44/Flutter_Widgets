import 'package:flutter/material.dart';

class ModalBottomSheetHome extends StatefulWidget {
  const ModalBottomSheetHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ModalBottomSheetHome> createState() => _ModalBottomSheetHomeState();
}

class _ModalBottomSheetHomeState extends State<ModalBottomSheetHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                      child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Close')),
                      ),
                    );
                  });
            },
            child: const Text('Modal Bottom Sheet')),
      ),
    );
  }
}
