// Copyright (c) 2016, Alexandre Roux Tekartik. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:tekartik_app_utils/splash/splash.dart';

Future main() async {
  splash.init(minDisplayDuration: 1000);
  await splash.hide();
}
