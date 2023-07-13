import 'package:data_size/data_size.dart';
import 'package:test/test.dart';

void main() {
  const separator = Prefix.separator;

  group('binary', () {
    const prefix = Prefix.binary;

    test('no prefix', () {
      expect(prefix.format(0), '0$separator');
      expect(prefix.format(1), '1$separator');
      expect(prefix.format(2), '2$separator');
      expect(prefix.format(10), '10$separator');
      expect(prefix.format(100), '100$separator');
      expect(prefix.format(999), '999$separator');
      expect(prefix.format(1000), '1000$separator');
      expect(prefix.format(1023), '1023$separator');
    });

    test('prefixes', () {
      expect(prefix.format(1024), '1.00${separator}Ki');
      expect(prefix.format(1025), '1.00${separator}Ki');
      expect(prefix.format(1536), '1.50${separator}Ki');
      expect(prefix.format(2048), '2.00${separator}Ki');
      expect(prefix.format(1024 * 1024), '1.00${separator}Mi');
      expect(prefix.format(1024 * 1024 * 1024), '1.00${separator}Gi');
      expect(prefix.format(1024 * 1024 * 1024 * 1024), '1.00${separator}Ti');
      expect(
        prefix.format(1024 * 1024 * 1024 * 1024 * 1024),
        '1.00${separator}Pi',
      );
      expect(
        prefix.format(1024 * 1024 * 1024 * 1024 * 1024 * 1024),
        '1.00${separator}Ei',
      );
      // Larger numbers overflow Dart's int
    });
    test('precisions', () {
      expect(prefix.format(1024, precision: 0), '1${separator}Ki');
      expect(prefix.format(1025, precision: 0), '1${separator}Ki');
      expect(prefix.format(1536, precision: 0), '2${separator}Ki');
      expect(prefix.format(2048, precision: 0), '2${separator}Ki');
      expect(prefix.format(1024 * 1024, precision: 0), '1${separator}Mi');
      expect(
        prefix.format(1024 * 1024 * 1024, precision: 0),
        '1${separator}Gi',
      );
      expect(
        prefix.format(1024 * 1024 * 1024 * 1024, precision: 0),
        '1${separator}Ti',
      );
      expect(
        prefix.format(1024 * 1024 * 1024 * 1024 * 1024, precision: 0),
        '1${separator}Pi',
      );
      expect(
        prefix.format(1024 * 1024 * 1024 * 1024 * 1024 * 1024, precision: 0),
        '1${separator}Ei',
      );

      expect(prefix.format(1024, precision: 1), '1.0${separator}Ki');
      expect(prefix.format(1025, precision: 1), '1.0${separator}Ki');
      expect(prefix.format(1536, precision: 1), '1.5${separator}Ki');
      expect(prefix.format(2048, precision: 1), '2.0${separator}Ki');
      expect(prefix.format(1024 * 1024, precision: 1), '1.0${separator}Mi');
      expect(
        prefix.format(1024 * 1024 * 1024, precision: 1),
        '1.0${separator}Gi',
      );
      expect(
        prefix.format(1024 * 1024 * 1024 * 1024, precision: 1),
        '1.0${separator}Ti',
      );
      expect(
        prefix.format(1024 * 1024 * 1024 * 1024 * 1024, precision: 1),
        '1.0${separator}Pi',
      );
      expect(
        prefix.format(1024 * 1024 * 1024 * 1024 * 1024 * 1024, precision: 1),
        '1.0${separator}Ei',
      );

      expect(prefix.format(1024, precision: 3), '1.000${separator}Ki');
      expect(prefix.format(1025, precision: 3), '1.001${separator}Ki');
      expect(prefix.format(1536, precision: 3), '1.500${separator}Ki');
      expect(prefix.format(2048, precision: 3), '2.000${separator}Ki');
      expect(prefix.format(1024 * 1024, precision: 3), '1.000${separator}Mi');
      expect(
        prefix.format(1024 * 1024 * 1024, precision: 3),
        '1.000${separator}Gi',
      );
      expect(
        prefix.format(1024 * 1024 * 1024 * 1024, precision: 3),
        '1.000${separator}Ti',
      );
      expect(
        prefix.format(1024 * 1024 * 1024 * 1024 * 1024, precision: 3),
        '1.000${separator}Pi',
      );
      expect(
        prefix.format(1024 * 1024 * 1024 * 1024 * 1024 * 1024, precision: 3),
        '1.000${separator}Ei',
      );
      // Larger numbers overflow Dart's int
    });
  });
}
