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

    test("packItemList", () {
      expect(
          packItemList(<String>["1", "3"], (String item) {
            return {"item": item};
          }),
          {
            'columns': ['item'],
            'rows': [
              ['1'],
              ['3']
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

      var packed1 = {
        'columns': ['field1', 'field2', 'field3', 'field4'],
        'rows': [
          ['text1', 123456, null, null],
          [null, 789, 'text3', null]
        ]
      };
      JsonUnpack unpack = JsonUnpack(packed1);
      int count = 0;
      unpack.forEach((Map map) {
        if (count == 0) {
          expect(map['field1'], "text1");
        }
        count++;
      });
      expect(count, 2);
      expect(unpackList(packed1), [
        {"field1": "text1", "field2": 123456},
        {"field3": "text3", "field2": 789}
      ]);
    });
  });
}
