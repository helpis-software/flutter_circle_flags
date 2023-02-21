library circle_flags;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// a rounded flag
class CircleFlag extends StatelessWidget {
  CircleFlag(this.countryCode, {super.key, this.size = 48})
      : assetName = 'assets/svg/${countryCode.toLowerCase()}.svg';
  final String countryCode;
  final double size;
  final String assetName;

  @override
  Widget build(final BuildContext context) => ClipOval(
        child: SvgPicture.asset(
          assetName,
          width: size,
          height: size,
          package: 'circle_flags',
        ),
      );

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('countryCode', countryCode))
      ..add(StringProperty('assetName', assetName))
      ..add(DoubleProperty('size', size));
  }
}
