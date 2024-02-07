enum Prefix {
  decimal(
    divider: 1000,
    prefixes: ['', 'k', 'M', 'G', 'T', 'P', 'E', 'Z', 'Y', 'R', 'Q'],
  ),
  binary(
    divider: 1024,
    prefixes: ['', 'Ki', 'Mi', 'Gi', 'Ti', 'Pi', 'Ei', 'Zi', 'Yi'],
  );

  const Prefix({required this.divider, required this.prefixes});

  /// Narrow No-Break Space, used for combining numbers and unit symbols in
  /// general.
  ///
  /// https://unicode-explorer.com/c/202F
  static const separator = '\u202f';

  final int divider;
  final List<String> prefixes;

  String format(int value, {int precision = 2}) {
    assert(value >= 0);
    assert(precision >= 0);

    var size = value.toDouble();
    var orderOfMagnitude = 0;
    while (size >= divider && prefixes.length > orderOfMagnitude + 1) {
      size /= divider;
      orderOfMagnitude++;
    }

    // We don't want to add fractional digits for sizes without a prefix:
    // 1.24 kB and 5.253 MB, but not 8.00 B
    final actualPrecision = orderOfMagnitude == 0 ? 0 : precision;
    final sizeString = size.toStringAsFixed(actualPrecision);
    return '$sizeString$separator${prefixes[orderOfMagnitude]}';
  }
}
