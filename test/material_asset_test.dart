@TestOn('browser')
import 'package:test/test.dart';
import 'package:tekartik_app_utils/material_asset/loader.dart';

void main() {
  group('material_asset', () {
    test('roboto-condensed', () async {
      await loadRobotoCondensedFontCss();
    });
    test('roboto-slab', () async {
      await loadRobotoSlabFontCss();
    });
    test('roboto', () async {
      await loadRobotoFontCss();
    });
    test('material_icons', () async {
      await loadMaterialIconCss();
    });
  });
}
