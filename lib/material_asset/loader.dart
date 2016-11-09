import 'package:tekartik_browser_utils/js_utils.dart';
import 'package:tekartik_browser_utils/css_utils.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:tekartik_jquery/jquery.dart';
import 'package:tekartik_jquery/jquery_loader.dart';
import 'dart:async';
import 'package:tekartik_common_utils/env_utils.dart';

Future loadMaterialIconCss() async {
  await loadStylesheet(
      "packages/tekartik_material_asset/font/material-icons/material-icons.css");
}

