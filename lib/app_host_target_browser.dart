import 'package:pub_semver/pub_semver.dart';
import 'package:tekartik_common_utils/common_utils_import.dart';
import 'package:tekartik_common_utils/string_enum.dart';
import 'app_host_target.dart';
export 'app_host_target.dart';
import 'dart:html';

class BrowserLocationInfo implements LocationInfo {
  Location location;
  Map<String, String> arguments;
  BrowserLocationInfo(this.location) {
    arguments = locationSearchGetArguments(location.search);
  }
  String get host => location.host;
  String get path => location.pathname;

  @override
  String toString() {
    Map map = {"host": host, "path": path};
    if (arguments.isNotEmpty) {
      map['arguments'] = arguments;
    }
    return map.toString();
  }
}

LocationInfo _locationInfo;

LocationInfo get locationInfo =>
    _locationInfo ??
    () {
      _locationInfo = new BrowserLocationInfo(window.location);
      return _locationInfo;
    }();
