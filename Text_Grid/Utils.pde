
public class Utils {
  
  public final static String VERSION = "0.4.0";
  protected PApplet p;
  protected PGraphics g;
  /**
   * Keeps track of the accumulated length of the complete dash pattern. Eg:
   * for 10-5-2-5 it is 22.
   */
  protected float dashPatternLength = 0;
  
  /**
   * The pattern of dash-gap-dash-gap... to be used to render dashed lines, in
   * pixels. For example: { 10, 10 } corresponds to 10px dash + 10px gap
   */
  protected float[] dashPattern = { 10, 10 };
  
  
  /**
   * Main constructor, pass a reference to the current PApplet
   * 
   * @param theParent
   */
  public Utils() {
 
    updateDashPatternLength();
  }
  
  protected void warning(String msg) {
    PApplet.println("DASHED-LINES WARNING: " + msg);
  }
  
  /**
   * Computes dashPatternLength
   */
  protected void updateDashPatternLength() {
    dashPatternLength = 0;
    for (int i = 0; i < dashPattern.length; i++) {
      dashPatternLength += dashPattern[i];
    }
  }
  
  /*
    Create a dotted lines from the coordinates given in the @params   
  */
  
  void drawDotLines(float x, float y){
    
  }
  
  
  /**
   * Sets the lengths of the dash pattern in pixels.
   * 
   * @param ds
   *            Array of dash-gap-dash... lengths
   */
  public void pattern(float[] ds) {
    // Sanity
    int len = ds.length;
    if (len == 0)
      return;
    // Check if any value is negative
    for (int i = 0; i < ds.length; i++) {
      if (ds[i] < 0) {
        this.warning("Gap-dash lengths cannot be negative, this call to 'pattern()' will have no effect.");
        return;
      }
    }

    if (ds.length % 2 == 1) {
      len++;
    }
    
    // Avoid references
    float[] temp = new float[len];
    System.arraycopy(ds, 0, temp, 0, ds.length);

    if (ds.length % 2 == 1) {
      temp[len - 1] = temp[len - 2];
    }
    dashPattern = temp;
    updateDashPatternLength();
  }
  
  /**
   * Sets the lengths of the dash pattern in pixels.
   * 
   * @param d1
   *            Dash length
   * @param d2
   *            Gap length
   */
  public void pattern(float d1, float d2) {
    this.pattern(new float[] {d1, d2});
  }
  
  /**
   * Draws a dashed line between two points.
   * 
   * @param x1
   *            X-coordinate of the first point
   * @param y1
   *            Y-coordinate of the first point
   * @param x2
   *            X-coordinate of the second point
   * @param y2
   *            Y-coordinate of the second point
   */
  public void line(float x1, float y1, float x2, float y2) {
    this.beginShapeImpl();
    this.vertexImpl(x1, y1);
    this.vertexImpl(x2, y2);
    this.endShapeImpl(PApplet.OPEN);
  }
  
}
