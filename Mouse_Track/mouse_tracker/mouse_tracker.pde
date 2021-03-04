// Example 3-4: Drawing a continuous line
void setup() {
  size(400, 1000);
  background(255);
}

void draw() {
  stroke(0);

  // Draw a line from previous mouse location to current mouse location.
  line(pmouseX, pmouseY, mouseX, mouseY);
  
}

float speed(float x1,float y1,float x2, float y2){
 return x1;
}
