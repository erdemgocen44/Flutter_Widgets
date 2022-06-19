import 'package:flutter/material.dart';
import 'package:widgets/home_page.dart';
import 'package:widgets/widgets/adaptive/adaptive_home.dart';
import 'package:widgets/widgets/alert_dialog/alert_dialog.dart';
import 'package:widgets/widgets/animated_cross_fade/animated_cross_fade_home.dart';
import 'package:widgets/widgets/bottom_bar/bottom_bar_home.dart';
import 'package:widgets/widgets/checkbox/checkbox_listtile.dart';
import 'package:widgets/widgets/choice_chip/choice_chip_home.dart';
import 'package:widgets/widgets/clippers/clippers_page.dart';
import 'package:widgets/widgets/cliprrect/cliprrect.dart';
import 'package:widgets/widgets/date_picker/date_picker_home.dart';
import 'package:widgets/widgets/dialog/simple_dialog_home.dart';
import 'package:widgets/widgets/expansion_tile/expansion_tile_home.dart';
import 'package:widgets/widgets/fitted_box/fitted_box_home.dart';
import 'package:widgets/widgets/flexible/filexible.dart';
import 'package:widgets/widgets/futures/futures_home.dart';
import 'package:widgets/widgets/glassmorphism/glass_home.dart';
import 'package:widgets/widgets/intractive_viewer/interactive_viewer.dart';
import 'package:widgets/widgets/modal_bottom_sheet/modal_bottom_sheet_home.dart';
import 'package:widgets/widgets/navigation_bar/navigation_bar_home.dart';
import 'package:widgets/widgets/neumorphism/neu_home.dart';
import 'package:widgets/widgets/page_view/page_view_home.dart';
import 'package:widgets/widgets/popup_menu/popup_menu_home.dart';
import 'package:widgets/widgets/positioned/positioned_home.dart';
import 'package:widgets/widgets/range_slider/range_slider_home.dart';
import 'package:widgets/widgets/selectable/selectable.dart';
import 'package:widgets/widgets/sliver_appbar/sliver_appbar_home.dart';
import 'package:widgets/widgets/spacer/spacer_home.dart';
import 'package:widgets/widgets/spread_operator/spread_operator.dart';
import 'package:widgets/widgets/stackhome/stack_home.dart';
import 'package:widgets/widgets/stepper/stepper_home.dart';
import 'package:widgets/widgets/stream_builder/stream_builder_home.dart';
import 'package:widgets/widgets/stream_builder2/stream_builder_home_2.dart';
import 'package:widgets/widgets/table/table_home.dart';
import 'package:widgets/widgets/time_picker/time_picker_home.dart';
import 'package:widgets/widgets/tooltip/tooltip_home.dart';
import 'package:widgets/widgets/visibility/visibility.dart';
import 'package:widgets/widgets/will_pop_scope/will_pop_scope.dart';
import 'package:widgets/widgets/wrap/wrap_home.dart';

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
  "/stack": (context) => const StackHome(
        title: 'Stack',
      ),
  "/table": (context) => const TableHome(
        title: 'Table',
      ),
  "/adaptive": (context) => const AdaptiveHome(
        title: 'Adaptive',
      ),
  "/spacer": (context) => const SpacerHome(
        title: 'Spacer',
      ),
  "/stream": (context) => const StreamBuilderHome(
        title: 'StreamBuilder',
      ),
  "/stream2": (context) => const StreamBuilderHome2(
        title: 'StreamBuilder2',
      ),
  "/future": (context) => const FutureHome(
        title: 'Future',
      ),
  "/navigationbar": (context) => const NavigationBarHome(
        title: 'Navigation Bar',
      ),
  "/tooltip": (context) => const TooltipHome(
        title: 'Tooltip',
      ),
  "/date": (context) => const DatePickerHome(
        title: 'Date Picker',
      ),
  "/will": (context) => const WillPopScopeHome(
        title: 'WillPopScope',
      ),
  "/dialog": (context) => const SimpleDialogHome(
        title: 'Simple Dialog',
      ),
  "/anime": (context) => const AnimatedCrossFadeHome(
        title: 'Animated Cross Fade',
      ),
  "/modal": (context) => const ModalBottomSheetHome(
        title: 'Modal Bottom Sheet',
      ),
  "/stepper": (context) => const StepperHome(
        title: 'Stepper',
      ),
  "/pageview": (context) => const PageViewHome(
        title: 'Page View',
      ),
  "/popup": (context) => const PopupMenuHome(),
  "/bottom": (context) => const BottomBarHome(
        title: 'Bottom Bar',
      ),
  "/range": (context) => const RangeSliderHome(
        title: 'Range Slider',
      ),
  "/time": (context) => const TimePickerHome(
        title: 'Time Picker',
      ),
  "/wrap": (context) => const WrapHome(
        title: 'Wrap',
      ),
  "/expansion": (context) => const ExpansionTileHome(
        title: 'ExpansionTile',
      ),
  "/sliver": (context) => const SliverAppbarHome(
        title: 'Sliver AppBar',
      ),
  "/choice": (context) => const ChoiceChipHome(
        title: 'Choice Chip',
      ),
};
