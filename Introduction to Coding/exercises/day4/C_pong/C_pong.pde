int x = 50;
int y = 150;
int speed = 5;
int velocityX = speed;
int velocityY = speed;
int margin = 100;
int paddleW = 100;

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
  if(y > height - margin){
    y = height - margin;
    velocityY = -speed;
    // check if hit paddle
    if(x >= mouseX && x <= mouseX+paddleW){
      // okay
    }
    else{
      noLoop();
    }
  }
  if(y < 0){
    y = 0;
    velocityY = speed;
  }
  
  // draw
  clear();
  ellipse(x, y, 30, 30);
  rect(mouseX, height-margin+15, paddleW, 20);
}

void mousePressed(){
  speed = (int)random(5,15);
  velocityY = -speed;
  velocityX = speed;
  y = (int)(height * 0.5);
  loop();
}