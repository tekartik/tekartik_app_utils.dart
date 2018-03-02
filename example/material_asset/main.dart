import 'dart:async';
import 'dart:html';

import 'package:tekartik_app_utils/material_asset/loader.dart';

PreElement output;

void message(String msg) {
  output ??= querySelector('#output') as PreElement;
  output.text += "msg\n";
}

main() async {
  await Future.wait([
    () async {
      await loadRobotoSlabFontCss();
    }(),
    () async {
      await loadRobotoFontCss();
    }(),
    () async {
      await loadRobotoCondensedFontCss();
    }(),
  ]);
  message("hi");
}
