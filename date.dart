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

//number of week pe year 
  int numOfWeeks(int year) {
    DateTime dec28 = DateTime(year, 12, 28);
    int dayOfDec28 = int.parse(DateFormat("D").format(dec28));
    return ((dayOfDec28 - dec28.weekday + 10) / 7).floor();
  }
