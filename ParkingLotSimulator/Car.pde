class Car
{
  float speed;
  float xPos;
  float yPos;
  PImage car;
  
  Car (float s, float x, float y)
  {
    speed = s;
    xPos = x;
    yPos = y;
  }
  
  void move ()
  {
      xPos += speed;
  }
  
  void drawCar ()
  {
    car = loadImage("car_image.png");
    image(car, xPos, yPos, 100, 60);
  }
}