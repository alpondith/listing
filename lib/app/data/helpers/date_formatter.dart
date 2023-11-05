import 'package:intl/intl.dart';

class DateFormatter {
  String handle(String dateTime) {
    final parsedDateTime = DateTime.parse(dateTime);
    return DateFormat('MMM dd, yyyy hh:mm:ss a').format(parsedDateTime);
  }
}
