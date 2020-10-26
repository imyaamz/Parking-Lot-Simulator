class PriceCalculator {
  Date begin;
  Date end;
  Date between;
  double cost;
  double rate;
  PriceCalculator (Date enter, Date exit) {
    this.begin = enter;
    this.end = exit;
    between = new Date (enter);
  }
  PriceCalculator () {
  }
  double calculatePrice () {
    if (begin == null)
      return 0;
    while (between.today != end.today || between.hour != end.hour || between.before_noon != end.before_noon) {
      if (between.today == 6)
        rate = 1.5;
      else rate = 3;
      cost += rate;
      between.addHour();
    }
    if (begin.minute != end.minute)
      cost += rate;
    return cost;
  }
}