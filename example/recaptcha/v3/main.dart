import 'dart:async';

import 'package:tekartik_app_utils/preoutput/pre_output.dart';
import 'package:tekartik_app_utils/recaptcha/recaptcha.dart';
import 'package:tekartik_browser_utils/browser_utils_import.dart';

Future main() async {
  // querySelector('#output').text = 'Your Dart app is running.';
  var siteKey = '6LdXqY0UAAAAADHEJ-K2IiDsDBkw8f15qg3WORJj';
  PreOutput output = PreOutput(id: 'output');
  output.writeln('waiting for non-robot');
  await grecaptchaLoadJs();
  var token = await grecaptchaV3Wait(siteKey: siteKey, action: 'test');
  output.writeln('token: $token');
}
