@TestOn("browser")

import 'package:test/test.dart';
import 'package:tekartik_app_utils/css_app_reset/loader.dart';
void main() {
  group('css_reset', () {

    test('loader', () async {
      await loadCssAppResetCss();
    });

  });
}
