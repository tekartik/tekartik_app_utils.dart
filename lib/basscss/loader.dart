import 'package:tekartik_browser_utils/css_utils.dart';
import 'dart:async';
import 'package:tekartik_common_utils/async_utils.dart';

StylesheetLoader _bassStylesheetLoader =
    new StylesheetLoader("packages/tekartik_app_utils/basscss/basscss.css");

FutureOr loadBassCss() => _bassStylesheetLoader.load();
