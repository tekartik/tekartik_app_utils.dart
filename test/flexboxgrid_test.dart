@TestOn("browser")
import 'package:test/test.dart';
import 'package:tekartik_app_utils/flexboxgrid/loader.dart';

void main() {
  group('flexboxgrid', () {
    test('loader', () async {
      await loadFlexBoxGridCss();
    });
  });
}
