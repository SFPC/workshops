int x = 50;
int y = 150;
int speed = 5;
int velocityX = speed;
int velocityY = speed;

void setup(){
  size(600, 500);
  noStroke();
}
void draw(){
  // update
  x = x + velocityX;
  y = y + velocityY;
  if(x > width){
    x = width;
    velocityX = -speed;
  }
  if(x < 0){
    x = 0;
    velocityX = speed;
  }  
  if(y > height){
    y = height;
    velocityY = -speed;
  }
  if(y < 0){
    y = 0;
    velocityY = speed;
  }
  
  // draw
  clear();
  ellipse(x, y, 30, 30);
}