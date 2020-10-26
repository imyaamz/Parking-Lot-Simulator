void setup ()
{
  size (1000, 850); // Creates canvas
  ParkingLot test = new ParkingLot(40, 295);
  test.drawLot();
  Street North = new Street ("North Street", 0, 175);
  North.drawStreet();
  Street South = new Street ("South Street", 0, 750);
  South.drawStreet();
  Car test_ = new Car (5, 0, 182.5);
  test_.drawCar();
}

void draw ()
{
  Car test_ = new Car (5, 0, 182.5);
  test_.drawCar();
  test_.move();
}