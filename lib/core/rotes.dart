import 'package:flutter/material.dart';
import 'package:widgets/home_page.dart';
import 'package:widgets/widgets/alert_dialog/alert_dialog.dart';
import 'package:widgets/widgets/checkbox/checkbox_listtile.dart';
import 'package:widgets/widgets/clippers/clippers_page.dart';
import 'package:widgets/widgets/cliprrect/cliprrect.dart';
import 'package:widgets/widgets/fitted_box/fitted_box_home.dart';
import 'package:widgets/widgets/flexible/filexible.dart';
import 'package:widgets/widgets/glassmorphism/glass_home.dart';
import 'package:widgets/widgets/intractive_viewer/interactive_viewer.dart';
import 'package:widgets/widgets/neumorphism/neu_home.dart';
import 'package:widgets/widgets/positioned/positioned_home.dart';
import 'package:widgets/widgets/selectable/selectable.dart';
import 'package:widgets/widgets/spread_operator/spread_operator.dart';
import 'package:widgets/widgets/visibility/visibility.dart';

var rotalar = <String, WidgetBuilder>{
  "/home": (context) => HomePage(),
  "/clippers": (context) => const ClipperPage(
        title: 'Clippers',
      ),
  "/glass": (context) => const GlassHome(
        title: 'GlassMorphism',
      ),
  "/neumorp": (context) => const NeumorpHome(
        title: 'NeuMorphism',
      ),
  "/flexible": (context) => const FlexibleHome(
        title: 'Flexible',
      ),
  "/checkbox": (context) => const CheckBoxListTilePage(
        title: 'CheckBox',
      ),
  "/cliprrect": (context) => const ClipRRectPage(
        title: 'ClipRRect',
      ),
  "/viewer": (context) => const InteractiveViewerPage(
        title: 'Viewer',
      ),
  "/selectable": (context) => const SelectablePage(
        title: 'Selectable',
      ),
  "/alert": (context) => const AlertDialogHome(
        title: 'AlertDialog',
      ),
  "/spread": (context) => const SpreadOperatorHome(
        title: 'SpreadOperator',
      ),
  "/visibility": (context) => const VisibilityHome(
        title: 'Visibility',
      ),
  "/positioned": (context) => const PositionedHome(
        title: 'Positioned',
      ),
  "/fitted": (context) => const FittedBoxHome(
        title: 'FittedBox',
      ),
};
