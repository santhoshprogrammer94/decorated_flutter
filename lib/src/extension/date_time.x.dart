import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String yMd() {
    return DateFormat.yMd().format(this);
  }

  String Md() {
    return DateFormat.Md().format(this);
  }

  String format(String format) {
    return DateFormat(format).format(this);
  }
}
