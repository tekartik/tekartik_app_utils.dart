import 'package:tekartik_browser_utils/css_utils.dart';
import 'dart:async';
import 'package:tekartik_common_utils/async_utils.dart';

Future loadFlexBoxGridPlusCss() => _plusCssLoader.run();

StylesheetLoader _cssLoader = new StylesheetLoader(
    "packages/tekartik_app_utils/flexboxgrid/flexboxgrid.min.css");

Future loadFlexBoxGridCss() => _cssLoader.load();

StylesheetLoader _hideCssLoader = new StylesheetLoader(
    "packages/tekartik_app_utils/flexboxgrid/flexboxgrid_hide.css");

Future loadFlexBoxGridHideCss() => _hideCssLoader.load();

AsyncOnceRunner _plusCssLoader = new AsyncOnceRunner(() async {
  await loadFlexBoxGridCss();
  await loadFlexBoxGridHideCss();
});
