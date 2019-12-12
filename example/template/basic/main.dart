import 'dart:html';

PreElement output;
void message(String msg) {
  output ??= querySelector('#output') as PreElement;
  output.text += 'msg\n';
}

void main() {
  message('hi');
}
