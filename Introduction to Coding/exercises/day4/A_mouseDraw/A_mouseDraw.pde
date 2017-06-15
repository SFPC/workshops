int count = 0;

void setup(){
  size(500, 500);
  colorMode(HSB, 360);
}

void draw(){
  noStroke();
  fill(count, 360, 360);
  count = count + 1;
  if(count == 360) count = 0;
  ellipse(mouseX, mouseY, 50, 50);
}