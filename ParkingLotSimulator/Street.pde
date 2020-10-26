class Street
{
  String name;
  float xPos;
  float yPos;
  
  Street (String streetName, float x, float y)
  {
    name = streetName;
    xPos = x;
    yPos = y;
  }
  
  void drawStreet ()
  {
    noStroke();
    fill(#989898);    
    rect (xPos, yPos, 1000, 75);
    fill (#FFFFFF);
    text (name , 465, yPos + 37.5);
  }
}