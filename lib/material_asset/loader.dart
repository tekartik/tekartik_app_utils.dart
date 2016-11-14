import 'package:tekartik_browser_utils/css_utils.dart';
import 'dart:async';

Future loadMaterialIconCss() async {
  await loadStylesheet(
      "packages/tekartik_material_asset/font/material-icons/material-icons.css");
}

