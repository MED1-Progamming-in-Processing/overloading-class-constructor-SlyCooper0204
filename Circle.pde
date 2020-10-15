class Circle {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  int radius = 20;
  color circleColor;
  color rectColor;
 

  Circle(float x, float y, float xSpeed, float ySpeed, int radius) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.radius = radius;
  }
  Circle(float x, float y, float xSpeed, float ySpeed){
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;

  }

  void moveCircle() {
    x += xSpeed;
    if (x < 0 || x > width) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < 0 || y > height) {
      ySpeed *= -1;
    }
  }
    void moveRectangle() {
    x += xSpeed;
    if (x < 0 || x > width) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < 0 || y > height) {
      ySpeed *= -1;
    }
  }
  
  void displayCircle(){
   fill(circleColor);
   ellipse(x, y, radius, radius);  
  }
  void displayRectangle(){
    fill(rectColor);
    rect(x, y, radius, radius);

  }
}
