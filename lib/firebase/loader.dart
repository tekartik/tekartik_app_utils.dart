import 'package:tekartik_browser_utils/browser_utils_import.dart';

Future loadFirebaseJs() async {
  await loadJavascriptScript(
      "https://www.gstatic.com/firebasejs/3.6.4/firebase.js");
}