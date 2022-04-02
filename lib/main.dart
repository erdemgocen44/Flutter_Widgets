import 'package:flutter/material.dart';
import 'package:widgets/widgets/alert_dialog/alert_dialog.dart';
import 'package:widgets/widgets/checkbox/checkbox_listtile.dart';
import 'package:widgets/widgets/clippers/clippers_page.dart';
import 'package:widgets/widgets/cliprrect/cliprrect.dart';
import 'package:widgets/widgets/flexible/filexible.dart';
import 'package:widgets/widgets/glassmorphism/glass_home.dart';
import 'package:widgets/widgets/intractive_viewer/interactive_viewer.dart';
import 'package:widgets/widgets/neumorphism/neu_home.dart';
import 'package:widgets/widgets/selectable/selectable.dart';
import 'package:widgets/widgets/spread_operator/spread_operator.dart';
import 'home_page.dart';

void main() => runApp(Widgets());

class Widgets extends StatelessWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/home": (context) => HomePage(),
        "/clippers": (context) => const ClipperPage(),
        "/glass": (context) => const GlassHome(),
        "/neumorp": (context) => const NeumorpHome(),
        "/flexible": (context) => const FlexibleHome(),
        "/checkbox": (context) => const CheckBoxListTilePage(),
        "/cliprrect": (context) => const ClipRRectPage(),
        "/viewer": (context) => const InteractiveViewerPage(),
        "/selectable": (context) => const SelectablePage(),
        "/alert": (context) => const AlertDialogHome(),
        "/spread": (context) => const SpreadOperatorHome(
              title: 'SpreadOperator',
            ),
      },
    );
  }
}
