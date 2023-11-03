import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get toFormat => DateFormat('dd/MM/y HH:mm:ss').format(toLocal());
  String get to => DateFormat('dd/MM/y HH:mm:ss').format(toLocal());
}
