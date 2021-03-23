🔟 Customizable data size (bit & byte) formatting for interfacing with the user

![Build, Test & Lint](https://github.com/JonasWanke/data_size/workflows/Build,%20Test%20&%20Lint/badge.svg)
[![Coverage](https://codecov.io/gh/JonasWanke/data_size/branch/master/graph/badge.svg)](https://codecov.io/gh/JonasWanke/data_size)

## Features

* format `DataUnit.bit` and `DataUnit.byte`
* select a prefix:
  * `Prefix.decimal` (kB, MB, … with multiples of 1000)
  * `Prefix.binary` (KiB, MiB, … with multiples of 1024)
* select a precision (number of decimal places)

## Examples

```dart
final defaultString = 12345.formatByteSize();                     // "12.35 kB"
final noDecimalPlaces = 12345.formatByteSize(precision: 0);       // "12 kB"
final binaryPrefix = 12345.formatByteSize(prefix: Prefix.binary); // "12.06 KiB"
final bits = 12345.formatBitSize();                               // "12.35 kb"
```
