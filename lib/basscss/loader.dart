import 'package:tekartik_browser_utils/css_utils.dart';
import 'dart:async';

StylesheetLoader _bassStylesheetLoader =
    StylesheetLoader("packages/tekartik_app_utils/basscss/basscss.css");

FutureOr loadBassCss() => _bassStylesheetLoader.load();
