import 'package:tekartik_build_utils/grind/grind_app.dart';
export 'package:tekartik_build_utils/grind/grind_app.dart';

// ignore_for_file: non_constant_identifier_names
class MyApp extends App {
  @override
  Future build() async {
    await super.build();
    print('### custom build step');
  }
}

Future main(List<String> args) async {
  app = MyApp();
  //await ex_browser();
  await grind(args);
}

@Task('Test')
void example_browser() {
  //app.path = join('example', 'browser');
}

@Task()
void example_meta_apple() {
  app.path = join('example', 'meta', 'apple');
}
