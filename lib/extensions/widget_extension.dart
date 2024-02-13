import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget center() => Center(child: this);

  Padding get paddingLR16 => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: this,
      );
  Padding get paddingLR4 => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: this,
      );

  Padding get paddingTop32 => Padding(
        padding: const EdgeInsets.only(top: 32),
        child: this,
      );
  Padding get paddingTop24 => Padding(
        padding: const EdgeInsets.only(top: 24),
        child: this,
      );
  Padding get paddingTop16 => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: this,
      );
  Padding get paddingTop8 => Padding(
        padding: const EdgeInsets.only(top: 8),
        child: this,
      );
}
