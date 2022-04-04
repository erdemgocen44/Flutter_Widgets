import 'package:flutter/material.dart';

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
      },
};
