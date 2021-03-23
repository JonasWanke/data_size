import 'package:meta/meta.dart';

import 'prefix.dart';

@immutable
class DataUnit {
  const DataUnit._({
    required this.shortString,
  });

  static const bit = DataUnit._(shortString: 'b');
  static const byte = DataUnit._(shortString: 'B');

  final String shortString;

  String format(
    int size, {
    Prefix prefix = Prefix.decimal,
    int precision = 2,
  }) =>
      '${prefix.format(size, precision: precision)}$shortString';
}

extension FormatDataSize on int {
  String formatBitSize({
    Prefix prefix = Prefix.decimal,
    int precision = 2,
  }) =>
      formatDataSize(unit: DataUnit.bit, prefix: prefix, precision: precision);

  String formatByteSize({
    Prefix prefix = Prefix.decimal,
    int precision = 2,
  }) =>
      formatDataSize(unit: DataUnit.byte, prefix: prefix, precision: precision);

  String formatDataSize({
    required DataUnit unit,
    Prefix prefix = Prefix.decimal,
    int precision = 2,
  }) =>
      unit.format(this, prefix: prefix, precision: precision);
}
