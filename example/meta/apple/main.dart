import 'dart:html';

PreElement output;
void message(String msg) {
  output ??= querySelector('#output') as PreElement;
  output.text += "${msg}\n";
}

main() {
  message("hi, dart is running");
  message("What's next?");
}
