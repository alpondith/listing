class DateToAgeCalculator {
  String handle(String date) {
    final createdAt = DateTime.parse(date);
    final now = DateTime.now();
    final difference = now.difference(createdAt);
    final years = difference.inDays ~/ 365;
    final months = difference.inDays % 365 ~/ 30;
    return "$years years $months months";
  }
}
