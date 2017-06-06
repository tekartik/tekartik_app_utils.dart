import 'package:tekartik_browser_utils/browser_utils_import.dart';

final JavascriptScriptLoader firebaseJsLoader = new JavascriptScriptLoader(
    "https://www.gstatic.com/firebasejs/4.1.1/firebase.js");

Future loadFirebaseJs() async {
  await firebaseJsLoader.load();
}
