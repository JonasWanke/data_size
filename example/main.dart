import 'package:data_size/data_size.dart';

// ignore_for_file: avoid_print

void main() {
  print(12345.formatByteSize()); // "12.35 kB"
  print(12345.formatByteSize(precision: 0)); // "12 kB"
  print(12345.formatByteSize(prefix: Prefix.binary)); // "12.06 KiB"
  print(12345.formatBitSize()); // "12.35 kb"
}
