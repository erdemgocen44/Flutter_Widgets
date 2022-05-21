import 'package:flutter/material.dart';

class StepperHome extends StatefulWidget {
  const StepperHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<StepperHome> createState() => _StepperHomeState();
}

class _StepperHomeState extends State<StepperHome> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stepper(
          steps: const [
            Step(
              title: Text('Step 1'),
              content: Text('Information for step 1'),
            ),
            Step(
              title: Text('Step 2'),
              content: Text('Information for step 2'),
            ),
            Step(
              title: Text('Step 3'),
              content: Text('Information for step 3'),
            ),
            Step(
              title: Text('Step 4'),
              content: Text('Information for step 4'),
            ),
          ],
          onStepTapped: (int newIndex) {
            setState(() {
              _currentStep = newIndex;
            });
          },
          currentStep: _currentStep,
        ),
      ),
    );
  }
}
