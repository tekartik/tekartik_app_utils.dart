// Copyright (c) 2016, Alexandre Roux Tekartik. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:dev_test/test.dart';
import 'package:tekartik_app_utils/json/json_pack.dart';

void main() {
  group('json_pack', () {
    test('pack', () {
      expect(packList(null), isNull);
      expect(packList([]), {'columns': [], 'rows': []});
      expect(
          packList([
            {"field1": "text1", "field2": 123456}
          ]),
          {
            'columns': ['field1', 'field2'],
            'rows': [
              ['text1', 123456]
            ]
          });
      expect(
          packList([
            {"field1": "text1", "field2": 123456},
            {"field3": "text3", "field2": 789, "field4": null}
          ]),
          {
            'columns': ['field1', 'field2', 'field3', 'field4'],
            'rows': [
              ['text1', 123456, null, null],
              [null, 789, 'text3', null]
            ]
          });
    });

    test('unpack', () {
      expect(unpackList(null), isNull);
      expect(unpackList({}), isNull);
      expect(unpackList({'columns': [], 'rows': []}), []);
      expect(
          unpackList({
            'columns': ['field1', 'field2'],
            'rows': [
              ['text1', 123456]
            ]
          }),
          [
            {"field1": "text1", "field2": 123456}
          ]);
      expect(
          unpackList({
            'columns': ['field1', 'field2', 'field3', 'field4'],
            'rows': [
              ['text1', 123456, null, null],
              [null, 789, 'text3', null]
            ]
          }),
          [
            {"field1": "text1", "field2": 123456},
            {"field3": "text3", "field2": 789}
          ]);
    });
  });
}
