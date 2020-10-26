class ParkingStallSection //<>// //<>//
{
  ParkingStall [][] stall_array = new ParkingStall [2][5];
  Date [][] date_array = new Date [2][5];
  boolean [][] rdm_array = new boolean [2][5];
  int row = 2;
  int column = 5;
  
  ParkingStallSection (float x, float y)
  {
    for (int i = 0; i < 2; i++)
    {
      for (int j = 0; j < 5; j++)
      {
        rdm_array [i][j] = true_or_false();

        float rdm_day = 0; //random (8);
        float rdm_hour = 0; //random (1, 13);
        float rdm_minute = 0; //random (60);
        boolean stallStatus = false; //true_or_false();
        
        stall_array [i][j] = new ParkingStall (x + j*85, y, 80, 50);
        date_array [i][j] = new Date (rdm_day, rdm_hour, rdm_minute, rdm_array[i][j]);
        stall_array [i][j].setStatus (stallStatus, date_array [i][j]);
        stall_array [i][j].drawStall();
        
      }
      y += 55;
    }
  }
  
  void drawStallSection()
  {
    for (int i = 0; i < row; i++)
    {
      for (int j = 0; j < column; j++)
      {
        stall_array[i][j].drawStall();
      }
    }
  }
}