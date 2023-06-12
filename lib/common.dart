import 'dart:io';

import 'package:flutter/foundation.dart';

AppPlatform checkPlatform() {
  if (kIsWeb) {
    return AppPlatform.WEB;
  } else {
    if (Platform.isAndroid || Platform.isIOS) {
      return AppPlatform.MOBILE;
    } else if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      return AppPlatform.DESKTOP;
    } else {
      return AppPlatform.MOBILE;
    }
  }
}

enum AppPlatform { MOBILE, WEB, DESKTOP }
