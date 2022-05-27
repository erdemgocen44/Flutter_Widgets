import 'package:flutter/material.dart';

class TimePickerHome extends StatefulWidget {
  const TimePickerHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<TimePickerHome> createState() => _TimePickerHomeState();
}

class _TimePickerHomeState extends State<TimePickerHome> {
  TimeOfDay? time = const TimeOfDay(hour: 23, minute: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          '${time!.hour.toString()}:${time!.minute.toString()}',
          style: const TextStyle(fontSize: 75, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            TimeOfDay? newTime = await showTimePicker(
              context: context,
              initialTime: time!,
            );
            if (newTime != null) {
              setState(() {
                time = newTime;
              });
            }
          },
          child: Icon(Icons.access_time_outlined)),
    );
  }
}
