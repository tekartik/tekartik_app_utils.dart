import 'package:func/func.dart';

const String _columns = "columns";
const String _rows = "rows";

///
/// Convert to
/// { "columns": ["column1", "column2"],
/// "rows": [["row1_col1", "row1_col2"],["row2_col1", "row2_col2"]]
Map<String, List> packList(List<Map<String, dynamic>> list) {
  if (list == null) {
    return null;
  }
  Set<String> columnSet = new Set(); //new HashSet<String>();
  // Gather all the columns
  for (Map<String, Object> item in list) {
    columnSet.addAll(item.keys);
  }

  List<String> columns = columnSet.toList();

  // build the rows
  List rows = [];
  for (Map<String, Object> item in list) {
    List row = [];
    for (String column in columns) {
      row.add(item[column]);
    }
    rows.add(row);
  }

  Map<String, List> packed = {};
  packed[_columns] = columns;
  packed[_rows] = rows;

  return packed;
}

Map<String, dynamic> packItemList<T>(
    List<T> list, Func1<T, Map<String, dynamic>> itemToJsonCallback) {
  var unpackedList = <Map<String, dynamic>>[];
  for (var item in list) {
    unpackedList.add(itemToJsonCallback(item));
  }
  return packList(unpackedList);
}

class JsonUnpack {
  Map packed;
  JsonUnpack(this.packed);

  forEach(callback(Map item)) {
    if (packed == null) {
      return null;
    }

    List<String> columns = packed[_columns] as List<String>;
    List<List> rows = packed[_rows] as List<List>;
    if (columns == null || rows == null) {
      return null;
    }

    int columnCount = columns.length;

    for (List row in rows) {
      Map<String, Object> item = {};
      for (int i = 0; i < columnCount; i++) {
        var value = row[i];
        if (value != null) {
          item[columns[i]] = value;
        }
      }
      callback(item);
    }
  }
}

///
/// Convert to
/// { "columns": ["column1", "column2"],
/// "rows": [["row1_col1", "row1_col2"],["row2_col1", "row2_col2"]]
List<Map<String, Object>> unpackList(Map<String, dynamic> packed) {
  if (packed == null) {
    return null;
  }

  List<String> columns = packed[_columns] as List<String>;
  List<List> rows = packed[_rows] as List<List>;
  if (columns == null || rows == null) {
    return null;
  }

  int columnCount = columns.length;

  List<Map<String, Object>> items = [];
  for (List row in rows) {
    Map<String, Object> item = {};
    for (int i = 0; i < columnCount; i++) {
      var value = row[i];
      if (value != null) {
        item[columns[i]] = value;
      }
    }
    items.add(item);
  }

  return items;
}
