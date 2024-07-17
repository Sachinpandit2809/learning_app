import 'package:flutter/material.dart';

extension ConExt on BuildContext {
  double get contextHeight => MediaQuery.sizeOf(this).height;
  double get contextWidth => MediaQuery.sizeOf(this).width;
}
