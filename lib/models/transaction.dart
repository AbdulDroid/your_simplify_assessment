class Transaction {
  final String title;
  final String date;
  final String time;
  final String points;
  final bool plus;

  Transaction(
      {required this.title,
      required this.date,
      required this.time,
      required this.points,
      required this.plus});
}
