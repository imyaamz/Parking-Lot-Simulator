class Date
{
  final String [] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
  int today;
  int hour;
  int minute;
  boolean before_noon;
  
  void addHour()
  {
    if (hour == 12 && before_noon == false)
    {
      today += 1;
      hour = 1;
      before_noon = true;
    }
    else
    {
      hour += 1;
    }
  }
  
  void addMinute()
  {
    if ( minute == 59 && hour == 12 && before_noon == false)
    {
      today += 1;
      hour = 1;
      minute = 0;
    }
    else if (minute == 59 && hour != 12)
    {
      hour += 1;
      minute = 0;
    }
    else
    {
      minute += 1;
    }
  }
 
  boolean equal(Date d)
  {
    if (d.today == today && d.hour == hour && d.minute == minute && d.before_noon == before_noon)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
  Date (Date d)
  {
    today = d.today;
    hour = d.hour;
    minute = d.minute;
    before_noon = d.before_noon;    
  }  
  
  Date (int d, int h, int m, boolean beforeNoon)
  {
    today = d%7;
    hour = h%11;
    minute = m%60;
    before_noon = beforeNoon;
  }

  Date (float D, float H, float M, boolean beforeNoon)
  {
    int d = int(D);
    int h = int(H);
    int m = int(M);

    today = d%7;
    hour = h%11;
    minute = m%60;
    before_noon = beforeNoon;
  }  
  
  String toString()
  {
    String date = days[today];
    
    if (hour < 10)
    {
      date += " 0" + hour;      
    }
    else
    {
      date += " " + hour;
    }
    
    if (minute < 10)
    {
      date += ":0" + minute;
    }
    else
    {
      date += ":" + minute;
    }
    
    if (before_noon)
    {
      date += "AM";
    }
    else
    {
      date += "PM";
    }
    return date;
  }
}