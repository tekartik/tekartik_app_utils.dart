@TestOn("browser")
// Copyright (c) 2016, Alexandre Roux Tekartik. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:dev_test/test.dart';
import 'package:tekartik_app_utils/firebase/loader.dart';

void main() {
  group('firebase_browser', () {
    test('loader', () async {
      await firebaseJsLoader.load();
      expect(firebaseJsLoader.loaded, isTrue);
    });
  });
}
