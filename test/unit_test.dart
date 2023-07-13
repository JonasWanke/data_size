import 'package:data_size/data_size.dart';
import 'package:test/test.dart';

void main() {
  const separator = Prefix.separator;

  group('bit', () {
    const unit = DataUnit.bit;

    test('binary prefix', () {
      expect(unit.format(0, prefix: Prefix.binary), '0${separator}b');
      expect(unit.format(1, prefix: Prefix.binary), '1${separator}b');
      expect(unit.format(2, prefix: Prefix.binary), '2${separator}b');
      expect(unit.format(10, prefix: Prefix.binary), '10${separator}b');
      expect(unit.format(100, prefix: Prefix.binary), '100${separator}b');
      expect(unit.format(999, prefix: Prefix.binary), '999${separator}b');
      expect(unit.format(1000, prefix: Prefix.binary), '1000${separator}b');
      expect(unit.format(1023, prefix: Prefix.binary), '1023${separator}b');
      expect(unit.format(1024, prefix: Prefix.binary), '1.00${separator}Kib');
      expect(unit.format(1025, prefix: Prefix.binary), '1.00${separator}Kib');
      expect(unit.format(1536, prefix: Prefix.binary), '1.50${separator}Kib');
      expect(unit.format(2048, prefix: Prefix.binary), '2.00${separator}Kib');
      expect(
        unit.format(1024 * 1024, prefix: Prefix.binary),
        '1.00${separator}Mib',
      );
      expect(
        unit.format(1024 * 1024 * 1024, prefix: Prefix.binary),
        '1.00${separator}Gib',
      );
      expect(
        unit.format(1024 * 1024 * 1024 * 1024, prefix: Prefix.binary),
        '1.00${separator}Tib',
      );
      expect(
        unit.format(1024 * 1024 * 1024 * 1024 * 1024, prefix: Prefix.binary),
        '1.00${separator}Pib',
      );
      expect(
        unit.format(
          1024 * 1024 * 1024 * 1024 * 1024 * 1024,
          prefix: Prefix.binary,
        ),
        '1.00${separator}Eib',
      );
      // Larger numbers overflow Dart's int
    });

    test('decimal prefix', () {
      expect(unit.format(0, prefix: Prefix.decimal), '0${separator}b');
      expect(unit.format(1, prefix: Prefix.decimal), '1${separator}b');
      expect(unit.format(2, prefix: Prefix.decimal), '2${separator}b');
      expect(unit.format(10, prefix: Prefix.decimal), '10${separator}b');
      expect(unit.format(100, prefix: Prefix.decimal), '100${separator}b');
      expect(unit.format(999, prefix: Prefix.decimal), '999${separator}b');
      expect(unit.format(1000, prefix: Prefix.decimal), '1.00${separator}kb');
      expect(unit.format(1023, prefix: Prefix.decimal), '1.02${separator}kb');
      expect(unit.format(1024, prefix: Prefix.decimal), '1.02${separator}kb');
      expect(unit.format(1025, prefix: Prefix.decimal), '1.02${separator}kb');
      expect(unit.format(1500, prefix: Prefix.decimal), '1.50${separator}kb');
      expect(unit.format(2000, prefix: Prefix.decimal), '2.00${separator}kb');
      expect(
        unit.format(1000 * 1000, prefix: Prefix.decimal),
        '1.00${separator}Mb',
      );
      expect(
        unit.format(1000 * 1000 * 1000, prefix: Prefix.decimal),
        '1.00${separator}Gb',
      );
      expect(
        unit.format(1000 * 1000 * 1000 * 1000, prefix: Prefix.decimal),
        '1.00${separator}Tb',
      );
      expect(
        unit.format(1000 * 1000 * 1000 * 1000 * 1000, prefix: Prefix.decimal),
        '1.00${separator}Pb',
      );
      expect(
        unit.format(
          1000 * 1000 * 1000 * 1000 * 1000 * 1000,
          prefix: Prefix.decimal,
        ),
        '1.00${separator}Eb',
      );
      // Larger numbers overflow Dart's int
    });
  });

  group('byte', () {
    const unit = DataUnit.byte;

    test('binary prefix', () {
      expect(unit.format(0, prefix: Prefix.binary), '0${separator}B');
      expect(unit.format(1, prefix: Prefix.binary), '1${separator}B');
      expect(unit.format(2, prefix: Prefix.binary), '2${separator}B');
      expect(unit.format(10, prefix: Prefix.binary), '10${separator}B');
      expect(unit.format(100, prefix: Prefix.binary), '100${separator}B');
      expect(unit.format(999, prefix: Prefix.binary), '999${separator}B');
      expect(unit.format(1000, prefix: Prefix.binary), '1000${separator}B');
      expect(unit.format(1023, prefix: Prefix.binary), '1023${separator}B');
      expect(unit.format(1024, prefix: Prefix.binary), '1.00${separator}KiB');
      expect(unit.format(1025, prefix: Prefix.binary), '1.00${separator}KiB');
      expect(unit.format(1536, prefix: Prefix.binary), '1.50${separator}KiB');
      expect(unit.format(2048, prefix: Prefix.binary), '2.00${separator}KiB');
      expect(
        unit.format(1024 * 1024, prefix: Prefix.binary),
        '1.00${separator}MiB',
      );
      expect(
        unit.format(1024 * 1024 * 1024, prefix: Prefix.binary),
        '1.00${separator}GiB',
      );
      expect(
        unit.format(1024 * 1024 * 1024 * 1024, prefix: Prefix.binary),
        '1.00${separator}TiB',
      );
      expect(
        unit.format(1024 * 1024 * 1024 * 1024 * 1024, prefix: Prefix.binary),
        '1.00${separator}PiB',
      );
      expect(
        unit.format(
          1024 * 1024 * 1024 * 1024 * 1024 * 1024,
          prefix: Prefix.binary,
        ),
        '1.00${separator}EiB',
      );
      // Larger numbers overflow Dart's int
    });

    test('decimal prefix', () {
      expect(unit.format(0, prefix: Prefix.decimal), '0${separator}B');
      expect(unit.format(1, prefix: Prefix.decimal), '1${separator}B');
      expect(unit.format(2, prefix: Prefix.decimal), '2${separator}B');
      expect(unit.format(10, prefix: Prefix.decimal), '10${separator}B');
      expect(unit.format(100, prefix: Prefix.decimal), '100${separator}B');
      expect(unit.format(999, prefix: Prefix.decimal), '999${separator}B');
      expect(unit.format(1000, prefix: Prefix.decimal), '1.00${separator}kB');
      expect(unit.format(1023, prefix: Prefix.decimal), '1.02${separator}kB');
      expect(unit.format(1024, prefix: Prefix.decimal), '1.02${separator}kB');
      expect(unit.format(1025, prefix: Prefix.decimal), '1.02${separator}kB');
      expect(unit.format(1500, prefix: Prefix.decimal), '1.50${separator}kB');
      expect(unit.format(2000, prefix: Prefix.decimal), '2.00${separator}kB');
      expect(
        unit.format(1000 * 1000, prefix: Prefix.decimal),
        '1.00${separator}MB',
      );
      expect(
        unit.format(1000 * 1000 * 1000, prefix: Prefix.decimal),
        '1.00${separator}GB',
      );
      expect(
        unit.format(1000 * 1000 * 1000 * 1000, prefix: Prefix.decimal),
        '1.00${separator}TB',
      );
      expect(
        unit.format(1000 * 1000 * 1000 * 1000 * 1000, prefix: Prefix.decimal),
        '1.00${separator}PB',
      );
      expect(
        unit.format(
          1000 * 1000 * 1000 * 1000 * 1000 * 1000,
          prefix: Prefix.decimal,
        ),
        '1.00${separator}EB',
      );
      // Larger numbers overflow Dart's int
    });
  });
}
