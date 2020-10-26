class Gate
{
  boolean gate_open;
  float xPos;
  float yPos;
  
  Gate (boolean open_closed, float x, float y)
  {
    gate_open = open_closed;
    xPos = x;
    yPos = y;
  }
  
  void openGate()
  {
    noStroke();
    fill(#030303);
    rect (xPos - 75, yPos, 75, 10);
  }
  
  void closeGate ()
  { 
    noStroke();
    fill(#030303);
    rect (xPos, yPos, 75, 10);
  }
}