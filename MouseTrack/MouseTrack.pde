// Example 3-4: Drawing a continuous line
float maxSpeed=0;
void setup() {
  size(500, 500);
  background(255);
  textAlign(LEFT, TOP);
  textSize(20);
  strokeWeight(3);

}

void draw() {
  stroke(0);

  // Draw a line from previous mouse location to current mouse location.
  line(pmouseX, pmouseY, mouseX, mouseY);
  //speed(pmouseX, pmouseY, mouseX, mouseY);
  float x1=pmouseX;
  float y1=pmouseY;
  float x2=mouseX;
  float y2=mouseY;
  
 float speedMain = abs(x2-x1) + abs(y2-y1);
 if(maxSpeed<speedMain){
      maxSpeed=speedMain;
    }
 String textInfo = ("Current speed "+speedMain+" Max Speed "+maxSpeed);
 println(textInfo);
 int i=0;
  
 
 while (i < width) {
   rect(1, 1, 450, 50);
    noStroke();
    fill(0);
    

 text("Current speed "+speedMain, 5, 5);
 text("Max Speed "+maxSpeed, 200, 5);
 fill(255);

 i += 10;
  
}

}
/*float speed(float x1,float y1,float x2, float y2){
 float speedMain = abs(x2-x1) + abs(y2-y1);
 String textInfo = ("This is the speed"+speedMain);
 println(textInfo);
 int i=0;
 
  while (i < width) {
    noStroke();
    fill(0);
 text ("Mouse: " + mouseX + ", " + mouseY, width-100, 30);
 text("This is the speed"+speedMain, 5, 5);

    i += 10;
  }
 
 
}*/
