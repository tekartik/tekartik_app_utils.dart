import 'package:tekartik_browser_utils/css_utils.dart';
import 'dart:async';

Future loadSideBarCss() async {
  await loadStylesheet(
      "packages/tekartik_app_utils/side_bar_layout/css/side_bar_layout.css");
}
