@JS()
library tekartik_app_utils.recaptcha_interop;

import 'package:js/js.dart';

@JS()
@anonymous
class GReCaptchaRenderParams {
  external String get sitekey;

  external Function get callback;

  external factory GReCaptchaRenderParams({String sitekey, Function callback});
}

@JS()
@anonymous
class GReCaptcha {
  external void render(String id, GReCaptchaRenderParams params);

  external void ready(Function readyFunction);
}

@JS('grecaptcha')
external GReCaptcha get grecaptcha;
