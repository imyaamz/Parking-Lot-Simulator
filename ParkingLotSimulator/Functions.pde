boolean true_or_false ()
{
  float a = random(1);
  if (a - 0.5 < 0)
  {
    return true;
  }
  else
  {
    return false;
  }
}

Date start_date()
{
  int a = int(random (8));
  int b = int(random (1, 13));
  int c = int(random (60));
  boolean d = true_or_false();
  
  Date date = new Date (a, b, c, d);
  
  return date;
}