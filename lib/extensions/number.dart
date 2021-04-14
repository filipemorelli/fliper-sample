import 'package:intl/intl.dart';

// String formatReais(double value) {
//   final rs =
//       NumberFormat.currency(locale: "pt_BR", symbol: "R\$", name: "Real");
//   return rs.format(value);
// }

// String formatDouble(double value) {
//   final rs = NumberFormat.currency(locale: "pt_BR", symbol: "", name: "Real");
//   return rs.format(value);
// }

extension NumberStyle on double {
  String get formatReal => NumberFormat.currency(locale: "pt_BR", symbol: "R\$", name: "Real").format(this);

  String get formatRealWithoutSeparation =>
      NumberFormat.currency(locale: "pt_BR", symbol: "R\$", name: "Real").format(this).replaceAll('.', '');

  String percentage(int fractionDigits) {
    final String value = this.toStringAsFixed(fractionDigits + 1);
    return value.substring(0, value.length - 1) + '%';
  }
}
