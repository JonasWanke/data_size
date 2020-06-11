import 'package:meta/meta.dart';

import 'prefix.dart';

@immutable
class DataUnit {
  const DataUnit._({
    @required this.shortString,
  }) : assert(shortString != null);

  static const bit = DataUnit._(shortString: 'b');
  static const byte = DataUnit._(shortString: 'B');

  final String shortString;

  String format(
    int byteSize, {
    Prefix prefix = Prefix.decimal,
    int precision = 2,
  }) =>
      '${prefix.format(byteSize, precision: precision)}$shortString';
}

extension FormatDataUnit on int {
  String formatBitSize({
    Prefix prefix = Prefix.decimal,
    int precision = 2,
  }) =>
      DataUnit.bit.format(this, prefix: prefix, precision: precision);

  String formatByteSize({
    Prefix prefix = Prefix.decimal,
    int precision = 2,
  }) =>
      DataUnit.byte.format(this, prefix: prefix, precision: precision);
}
