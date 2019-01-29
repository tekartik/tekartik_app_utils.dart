import 'dart:async';

import 'package:tekartik_app_utils/preoutput/pre_output.dart';
import 'package:tekartik_app_utils/recaptcha/recaptcha.dart';

Future main() async {
  // querySelector('#output').text = 'Your Dart app is running.';

  PreOutput output = PreOutput(id: 'output');
  output.writeln('test');

  var token =
      await grecaptchaWait(siteKey: '6Lc4rI0UAAAAAK1B-0lJR_svGSMedTwuWk4jADxC');
  print('token; $token');
}
