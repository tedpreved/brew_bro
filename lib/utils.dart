import 'dart:io';

import 'package:test_exercise/constants.dart';

String getBaseUrlDependOnPlatform() {
  if (Platform.isAndroid) {
    return androidBaseUrl;
  } else if (Platform.isIOS) {
    return iosBaseUrl;
  } else {
    return unknownPlatformUrl;
  }
}
