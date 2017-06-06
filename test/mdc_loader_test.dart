@TestOn("browser")
import 'package:tekartik_app_utils/mdc/loader.dart';
import 'package:test/test.dart';

void main() {
  group('mdc_loader', () {
    test('load', () async {
      expect(isMdcJsLoaded, isFalse);
      await loadMdcJs();
      expect(isMdcJsLoaded, isTrue);
      await loadMdcJs();
    });
  });
}
