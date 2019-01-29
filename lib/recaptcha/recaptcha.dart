// bool isRecaptchaOn
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'package:tekartik_browser_utils/js_utils.dart';
import 'package:tekartik_app_utils/recaptcha/src/recaptcha_interop.dart' as js;
import 'package:tekartik_browser_utils/browser_utils_import.dart';

typedef void GReCaptchaValidateFunction(String token);

class GReCaptchaRenderParams {
  final String siteKey;
  final GReCaptchaValidateFunction callback;

  GReCaptchaRenderParams({@required this.siteKey, this.callback});

  @override
  String toString() {
    return toMap().toString();
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map['siteKey'] = siteKey;
    return map;
  }
}

class GReCaptcha {
  Future get ready {
    var completer = Completer();
    js.grecaptcha.ready(allowInterop((_) {
      print('ready');
      completer.complete();
    }));
    return completer.future;
  }

  Element createElement(String id) {
    return Element.html('<div id="$id" class="g-recaptcha"></div>');
  }

  void render(String id, GReCaptchaRenderParams params) {
    var jsCallback = (params.callback != null)
        ? (allowInterop((token) {
            params.callback(token?.toString());
          }))
        : null;
    var jsParams = js.GReCaptchaRenderParams(
        sitekey: params.siteKey, callback: jsCallback);
    js.grecaptcha.render(id, jsParams);
  }
}

final grecaptcha = GReCaptcha();

JavascriptScriptLoader _loader =
    JavascriptScriptLoader('https://www.google.com/recaptcha/api.js');
Future loadJs() async {
  await _loader.load();
}

const String _defaultWidgetId = 'recaptcha_widget';
const String _defaultContainerId = 'recaptcha_container';

/// return a token once validated
Future<String> grecaptchaWait(
    {String siteKey,
    String containerId = _defaultContainerId,
    String widgetId = _defaultWidgetId}) async {
  await loadJs();
  await grecaptcha.ready;
  var completer = Completer<String>();
  var element = grecaptcha.createElement(widgetId);
  querySelector('#${containerId}').children.add(element);

  grecaptcha.render(
      widgetId,
      GReCaptchaRenderParams(
          siteKey: siteKey,
          callback: (token) {
            completer.complete(token);
          }));
  return completer.future;
}
