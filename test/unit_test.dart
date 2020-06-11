import 'package:test/test.dart';
import 'package:byte_size/byte_size.dart';

void main() {
  group('bit', () {
    final unit = DataUnit.bit;

    test('binary prefix', () {
      expect(unit.format(0, prefix: Prefix.binary), '0 b');
      expect(unit.format(1, prefix: Prefix.binary), '1 b');
      expect(unit.format(2, prefix: Prefix.binary), '2 b');
      expect(unit.format(10, prefix: Prefix.binary), '10 b');
      expect(unit.format(100, prefix: Prefix.binary), '100 b');
      expect(unit.format(999, prefix: Prefix.binary), '999 b');
      expect(unit.format(1000, prefix: Prefix.binary), '1000 b');
      expect(unit.format(1023, prefix: Prefix.binary), '1023 b');
      expect(unit.format(1024, prefix: Prefix.binary), '1.00 Kib');
      expect(unit.format(1025, prefix: Prefix.binary), '1.00 Kib');
      expect(unit.format(1536, prefix: Prefix.binary), '1.50 Kib');
      expect(unit.format(2048, prefix: Prefix.binary), '2.00 Kib');
      expect(unit.format(1024 * 1024, prefix: Prefix.binary), '1.00 Mib');
      expect(
          unit.format(1024 * 1024 * 1024, prefix: Prefix.binary), '1.00 Gib');
      expect(unit.format(1024 * 1024 * 1024 * 1024, prefix: Prefix.binary),
          '1.00 Tib');
      expect(
          unit.format(1024 * 1024 * 1024 * 1024 * 1024, prefix: Prefix.binary),
          '1.00 Pib');
      expect(
          unit.format(1024 * 1024 * 1024 * 1024 * 1024 * 1024,
              prefix: Prefix.binary),
          '1.00 Eib');
      // Larger numbers overflow Dart's int
    });

    test('decimal prefix', () {
      expect(unit.format(0, prefix: Prefix.decimal), '0 b');
      expect(unit.format(1, prefix: Prefix.decimal), '1 b');
      expect(unit.format(2, prefix: Prefix.decimal), '2 b');
      expect(unit.format(10, prefix: Prefix.decimal), '10 b');
      expect(unit.format(100, prefix: Prefix.decimal), '100 b');
      expect(unit.format(999, prefix: Prefix.decimal), '999 b');
      expect(unit.format(1000, prefix: Prefix.decimal), '1.00 kb');
      expect(unit.format(1023, prefix: Prefix.decimal), '1.02 kb');
      expect(unit.format(1024, prefix: Prefix.decimal), '1.02 kb');
      expect(unit.format(1025, prefix: Prefix.decimal), '1.02 kb');
      expect(unit.format(1500, prefix: Prefix.decimal), '1.50 kb');
      expect(unit.format(2000, prefix: Prefix.decimal), '2.00 kb');
      expect(unit.format(1000 * 1000, prefix: Prefix.decimal), '1.00 Mb');
      expect(
          unit.format(1000 * 1000 * 1000, prefix: Prefix.decimal), '1.00 Gb');
      expect(unit.format(1000 * 1000 * 1000 * 1000, prefix: Prefix.decimal),
          '1.00 Tb');
      expect(
          unit.format(1000 * 1000 * 1000 * 1000 * 1000, prefix: Prefix.decimal),
          '1.00 Pb');
      expect(
          unit.format(1000 * 1000 * 1000 * 1000 * 1000 * 1000,
              prefix: Prefix.decimal),
          '1.00 Eb');
      // Larger numbers overflow Dart's int
    });
  });

  group('byte', () {
    final unit = DataUnit.byte;

    test('binary prefix', () {
      expect(unit.format(0, prefix: Prefix.binary), '0 B');
      expect(unit.format(1, prefix: Prefix.binary), '1 B');
      expect(unit.format(2, prefix: Prefix.binary), '2 B');
      expect(unit.format(10, prefix: Prefix.binary), '10 B');
      expect(unit.format(100, prefix: Prefix.binary), '100 B');
      expect(unit.format(999, prefix: Prefix.binary), '999 B');
      expect(unit.format(1000, prefix: Prefix.binary), '1000 B');
      expect(unit.format(1023, prefix: Prefix.binary), '1023 B');
      expect(unit.format(1024, prefix: Prefix.binary), '1.00 KiB');
      expect(unit.format(1025, prefix: Prefix.binary), '1.00 KiB');
      expect(unit.format(1536, prefix: Prefix.binary), '1.50 KiB');
      expect(unit.format(2048, prefix: Prefix.binary), '2.00 KiB');
      expect(unit.format(1024 * 1024, prefix: Prefix.binary), '1.00 MiB');
      expect(
          unit.format(1024 * 1024 * 1024, prefix: Prefix.binary), '1.00 GiB');
      expect(unit.format(1024 * 1024 * 1024 * 1024, prefix: Prefix.binary),
          '1.00 TiB');
      expect(
          unit.format(1024 * 1024 * 1024 * 1024 * 1024, prefix: Prefix.binary),
          '1.00 PiB');
      expect(
          unit.format(1024 * 1024 * 1024 * 1024 * 1024 * 1024,
              prefix: Prefix.binary),
          '1.00 EiB');
      // Larger numbers overflow Dart's int
    });

    test('decimal prefix', () {
      expect(unit.format(0, prefix: Prefix.decimal), '0 B');
      expect(unit.format(1, prefix: Prefix.decimal), '1 B');
      expect(unit.format(2, prefix: Prefix.decimal), '2 B');
      expect(unit.format(10, prefix: Prefix.decimal), '10 B');
      expect(unit.format(100, prefix: Prefix.decimal), '100 B');
      expect(unit.format(999, prefix: Prefix.decimal), '999 B');
      expect(unit.format(1000, prefix: Prefix.decimal), '1.00 kB');
      expect(unit.format(1023, prefix: Prefix.decimal), '1.02 kB');
      expect(unit.format(1024, prefix: Prefix.decimal), '1.02 kB');
      expect(unit.format(1025, prefix: Prefix.decimal), '1.02 kB');
      expect(unit.format(1500, prefix: Prefix.decimal), '1.50 kB');
      expect(unit.format(2000, prefix: Prefix.decimal), '2.00 kB');
      expect(unit.format(1000 * 1000, prefix: Prefix.decimal), '1.00 MB');
      expect(
          unit.format(1000 * 1000 * 1000, prefix: Prefix.decimal), '1.00 GB');
      expect(unit.format(1000 * 1000 * 1000 * 1000, prefix: Prefix.decimal),
          '1.00 TB');
      expect(
          unit.format(1000 * 1000 * 1000 * 1000 * 1000, prefix: Prefix.decimal),
          '1.00 PB');
      expect(
          unit.format(1000 * 1000 * 1000 * 1000 * 1000 * 1000,
              prefix: Prefix.decimal),
          '1.00 EB');
      // Larger numbers overflow Dart's int
    });
  });
}
