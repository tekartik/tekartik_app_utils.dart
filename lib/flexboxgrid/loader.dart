import 'package:tekartik_browser_utils/css_utils.dart';
import 'dart:async';

Future loadFlexBoxGridCss() async {
  await loadStylesheet(
      "packages/tekartik_app_utils/flexboxgrid/flexboxgrid.min.css");
}
