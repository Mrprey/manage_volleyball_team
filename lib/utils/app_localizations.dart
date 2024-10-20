import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class I18n {
  static String t(BuildContext ctx, String key) =>
      FlutterI18n.translate(ctx, key);
}
