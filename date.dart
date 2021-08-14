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

int weekNumber(DateTime date) {
  int dayOfYear = int.parse(DateFormat("D").format(date));
  int woy =  ((dayOfYear - date.weekday + 10) / 7).floor();
  if (woy < 1) {
    woy = numOfWeeks(date.year - 1);
  } else if (woy > numOfWeeks(date.year)) {
    woy = 1;
  }
  return woy;
}
// First day of the week sunday 
  var d = DateTime.now();
    var weekDay = d.weekday;
// First day of the week sunday 
    var firstDayOfWeek = d.subtract(Duration(days: weekDay ));
// First day of the week monday 
//  var firstDayOfWeek = d.subtract(Duration(days: weekDay -1));
    print(firstDayOfWeek);
  
  
