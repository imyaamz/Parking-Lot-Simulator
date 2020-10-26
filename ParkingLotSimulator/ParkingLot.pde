class ParkingLot
{
  ParkingStallSection [][] Lot = new ParkingStallSection [3][2];

  float xPos;
  float yPos;
  int row = 3;
  int column = 2;

  ParkingLot (float x, float y)
  {
    xPos = x;
    yPos = y;

    for (int i = 0; i < 3; i++)
    {
      for (int j = 0; j < 2; j++)
      {
        Lot[i][j] = new ParkingStallSection (xPos + j*500, yPos);
      }
      yPos += 150;
    }
  }

  void drawLot ()
  {
    noStroke();
    fill (#52DB80);
    rect (0, 0, 1000, 175); // Creates User Interface Area
    fill(#989898);
    rect (0, 250, 1000, 500); // Creates pavement
    
    // Note: The pavement for top street starts at (0, 175)
    // Note: The pavement for bottom street starts at (0, 750)
    // Note: Streets are 75 pixels wide and 850 pixels wide
    // Conclusion: Blacktop + entry wasy must start at (0, 250), must be 500 wide and 1000 long
    
    // Note: Top gate has coordinates (250, 462.5), and length/ width (75, 10)
    
    Gate top = new Gate (false, 462.5, 257.5);
    top.closeGate();
    Gate bottom = new Gate (false, 462.5, 732.5);
    bottom.closeGate();
    
    
    fill (#52DB80);
    rect (0, 825, 1000, 25); // Creates bottom boundary
    rect (0, 250, 25, 500);  // Ceates left boundary
    rect (975, 250, 25, 500); // Creates right boundary

    rect (0, 250, 462.5, 25); // Creates top/left boundary
    rect (537.5, 250, 462.5, 25); // Creates top/right boundary
    rect (0, 725, 462.5, 25); // Creates bottom/left boundary
    rect (537.5, 725, 462.5, 25); // Creates bottom/right boundary

    for (int i = 0; i < row; i++)
    {
      for (int j = 0; j < column; j++)
      {
        Lot [i][j].drawStallSection();
      }
    }
  }

  
  
  
  
  
}