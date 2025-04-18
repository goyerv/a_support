import 'package:timeago/timeago.dart' as timeago;









String getFormattedTimestamp(String timestamp, String lc) {
  DateTime _timestamp = DateTime.parse(timestamp).add(Duration(hours: DateTime.parse(timestamp).toLocal().timeZoneOffset.inHours, minutes: DateTime.parse(timestamp).toLocal().timeZoneOffset.inMinutes,));
  return timeago.format(_timestamp, locale: lc);
}