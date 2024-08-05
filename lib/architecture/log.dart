import 'package:flutter/foundation.dart';

void log(Object? message) {
  if (kDebugMode) debugPrint(message.toString());
}
