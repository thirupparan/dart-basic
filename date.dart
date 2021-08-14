int weekNumber(DateTime date) {
  int dayOfYear = int.parse(DateFormat("D").format(date));
  return ((dayOfYear - date.weekday + 10) / 7).floor();
}

// Most recent monday find 
var dayOfWeek = 1;
    DateTime date = DateTime.now();
    var lastMonday = date
        .subtract(Duration(days: date.weekday - dayOfWeek))
        .toIso8601String();
    print(lastMonday);
