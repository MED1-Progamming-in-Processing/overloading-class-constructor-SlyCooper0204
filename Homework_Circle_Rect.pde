Circle circle;

boolean Swap = true;

void setup() {
  size(300, 300);
   circle = new Circle(random(width), random(height), random(-3, 3), random(-3, 3), 50);
   circle = new Circle(random(width), random(height) , random(-3, 3), random(-3, 3));
}

void draw() {
  background(200);
  
  if(Swap){
   circle.moveCircle();
   circle.displayCircle();
  }
  else if(!Swap){
   circle.moveRectangle();
   circle.displayRectangle();
  }
}

void mousePressed(){
   if(mouseX < width && mouseY < height && Swap){
   circle.moveCircle();
   circle.displayCircle();
   Swap = !Swap;

   }else if(mouseX < width && mouseY < height && !Swap){
   circle.moveRectangle();
   circle.displayRectangle();
   Swap = !Swap;

}
}
