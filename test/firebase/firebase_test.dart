// Copyright (c) 2016, Alexandre Roux Tekartik. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:dev_test/test.dart';
import 'package:tekartik_app_utils/firebase/app_firebase.dart';

void main() {
  group('firebase', () {
    test('options', () {
      FirebaseOptions options = new FirebaseOptions(
          apiKey: "1",
          authDomain: "2",
          databaseURL: "3",
          projectId: "4",
          storageBucket: "5",
          messagingSenderId: "6");
      expect(options.apiKey, "1");
      expect(options.authDomain, "2");
      expect(options.databaseURL, "3");
      expect(options.projectId, "4");
      expect(options.storageBucket, "5");
      expect(options.messagingSenderId, "6");
    });
  });
}
