import 'package:test/test.dart';
import 'package:byte_size/byte_size.dart';

void main() {
  group('binary', () {
    final prefix = Prefix.binary;

    test('no prefix', () {
      expect(prefix.format(0), '0 ');
      expect(prefix.format(1), '1 ');
      expect(prefix.format(2), '2 ');
      expect(prefix.format(10), '10 ');
      expect(prefix.format(100), '100 ');
      expect(prefix.format(999), '999 ');
      expect(prefix.format(1000), '1000 ');
      expect(prefix.format(1023), '1023 ');
    });

    test('prefixes', () {
      expect(prefix.format(1024), '1.00 Ki');
      expect(prefix.format(1025), '1.00 Ki');
      expect(prefix.format(1536), '1.50 Ki');
      expect(prefix.format(2048), '2.00 Ki');
      expect(prefix.format(1024 * 1024), '1.00 Mi');
      expect(prefix.format(1024 * 1024 * 1024), '1.00 Gi');
      expect(prefix.format(1024 * 1024 * 1024 * 1024), '1.00 Ti');
      expect(prefix.format(1024 * 1024 * 1024 * 1024 * 1024), '1.00 Pi');
      expect(prefix.format(1024 * 1024 * 1024 * 1024 * 1024 * 1024), '1.00 Ei');
      // Larger numbers overflow Dart's int
    });
    test('precisions', () {
      expect(prefix.format(1024, precision: 0), '1 Ki');
      expect(prefix.format(1025, precision: 0), '1 Ki');
      expect(prefix.format(1536, precision: 0), '2 Ki');
      expect(prefix.format(2048, precision: 0), '2 Ki');
      expect(prefix.format(1024 * 1024, precision: 0), '1 Mi');
      expect(prefix.format(1024 * 1024 * 1024, precision: 0), '1 Gi');
      expect(prefix.format(1024 * 1024 * 1024 * 1024, precision: 0), '1 Ti');
      expect(prefix.format(1024 * 1024 * 1024 * 1024 * 1024, precision: 0),
          '1 Pi');
      expect(
          prefix.format(1024 * 1024 * 1024 * 1024 * 1024 * 1024, precision: 0),
          '1 Ei');

      expect(prefix.format(1024, precision: 1), '1.0 Ki');
      expect(prefix.format(1025, precision: 1), '1.0 Ki');
      expect(prefix.format(1536, precision: 1), '1.5 Ki');
      expect(prefix.format(2048, precision: 1), '2.0 Ki');
      expect(prefix.format(1024 * 1024, precision: 1), '1.0 Mi');
      expect(prefix.format(1024 * 1024 * 1024, precision: 1), '1.0 Gi');
      expect(prefix.format(1024 * 1024 * 1024 * 1024, precision: 1), '1.0 Ti');
      expect(prefix.format(1024 * 1024 * 1024 * 1024 * 1024, precision: 1),
          '1.0 Pi');
      expect(
          prefix.format(1024 * 1024 * 1024 * 1024 * 1024 * 1024, precision: 1),
          '1.0 Ei');

      expect(prefix.format(1024, precision: 3), '1.000 Ki');
      expect(prefix.format(1025, precision: 3), '1.000 Ki');
      expect(prefix.format(1536, precision: 3), '1.500 Ki');
      expect(prefix.format(2048, precision: 3), '2.000 Ki');
      expect(prefix.format(1024 * 1024, precision: 3), '1.000 Mi');
      expect(prefix.format(1024 * 1024 * 1024, precision: 3), '1.000 Gi');
      expect(
          prefix.format(1024 * 1024 * 1024 * 1024, precision: 3), '1.000 Ti');
      expect(prefix.format(1024 * 1024 * 1024 * 1024 * 1024, precision: 3),
          '1.000 Pi');
      expect(
          prefix.format(1024 * 1024 * 1024 * 1024 * 1024 * 1024, precision: 3),
          '1.000 Ei');
      // Larger numbers overflow Dart's int
    });
  });
}
