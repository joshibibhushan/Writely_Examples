import garciadelcastillo.dashedlines.*;

// Size of each cell in the grid, ratio of window size to video size
// 80 * 8 = 640
// 60 * 8 = 480
int videoScale = 8;
PFont f;  

// Number of columns and rows in our system
int cols, rows;

//Screen and world setup parameters
float             pixelsPerCentimeter                 = 40.0;
//Fisica Fworld 
FWorld            world;


Utils util = new Utils();

//dashlines variables
//DashedLines dash;
float dist = 0;

void setup() {
  size(640, 480);

  // Initialize columns and rows
  cols = width/videoScale;
  rows = height/videoScale;
  
    // Step 3: Create Font
  f = createFont("Arial", 16);
  hAPI_Fisica.init(this); 
  hAPI_Fisica.setScale(pixelsPerCentimeter); 
  world               = new FWorld();
  
  //dashline
 // dash = new DashedLines(this);  
  util.pattern(20, 10);
}

void draw() {

  // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {

      // Scaling up to draw a rectangle at (x,y)
      int x = i*videoScale;
      int y = j*videoScale;
      fill(255, 1);
      
      stroke(0);
      // For every column and row, a rectangle is drawn at an (x,y) location scaled and sized by videoScale.
      rect(x, y, videoScale, videoScale);
    }
  }
    textFont(f, 504); // Step 4: Specify font to be used
  fill(0,0,0,1);         // Step 5: Specify font color

  // Step 6: Display Text
  text("E", 40, height-24);
   //dash.setFill(255, 0, 0, 100);
    //l1.setFill(150,150,255,80);
   util.line(10, 10, 500, 500);
   
   // Animate dashes with 'walking ants' effect 
  //dash.offset(dist);
  //dist += 100;
}
