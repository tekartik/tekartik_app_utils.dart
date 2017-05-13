import 'dart:html';

PreElement output;
void message(String msg) {
  output ??= querySelector('#output');
  output.text += "msg\n";
}

main() {
  message("hi");
}
