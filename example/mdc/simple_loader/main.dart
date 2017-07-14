import 'dart:html';

import 'package:mdc/mdc.dart' as mdc;
import 'package:tekartik_app_utils/mdc/loader.dart';
import 'package:tekartik_app_utils/splash/splash.dart';

main() async {
  //devPrint('main');
  splash.init(minDisplayDuration: 2000);
  await loadMdcCssJs();
  //devPrint('loaded');
  mdc.autoInit();
  await splash.hide();
  //devPrint('done');

  FormElement form = querySelector('#greeting-form');

  form.onSubmit.listen(onSubmit);
}

void onSubmit(Event event) {
  event.preventDefault();
  String firstname = getInputValue('#firstname');
  String lastname = getInputValue('#lastname');

  String greeting = 'Hello';

  if (firstname.isNotEmpty || lastname.isNotEmpty) {
    greeting += ', ';

    if (firstname.isNotEmpty && lastname.isNotEmpty) {
      greeting += firstname + ' ' + lastname;
    } else if (lastname.isNotEmpty) {
      greeting += 'Mx. ' + lastname;
    } else {
      greeting += firstname;
    }
  }
  greeting += '!';

  ParagraphElement p = querySelector('#greeting');
  p.text = greeting;
}

String getInputValue(String selector) {
  InputElement input = querySelector(selector);
  return input.value;
}