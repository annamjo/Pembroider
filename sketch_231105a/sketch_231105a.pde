import processing.embroider.*;

PEmbroiderGraphics E;
public void setup() {
  size(700,700);
  //Initialize file
  noLoop(); 
  
  //File setup info
  E = new PEmbroiderGraphics(this, width, height);
  // 100 points = 1 cm
  String outputFilePath = sketchPath("File_Name.pes");
  E.setPath(outputFilePath);
  
  //Starts Drawing
  E.beginDraw(); 
  E.clear();
  
  //-------Your code here-----------------
    E.setStitch(5,20,0); //min to max stitch length, noise
    E.stroke(0,0,255);
  // red,green,blue
  E.strokeMode(E.TANGENT);
  E.rect(50,50,100,300);
  
  E.noStroke();
  E.fill(0,255,0);
  E.hatchMode(E.PERLIN); //organic fill
  E.circle(350,350,200);
  
  //-------File saving & preview-----------
  
  //E.optimize(); // slow but good and important
  E.visualize(); 
  //E.endDraw(); // write out the file
  //save("File_Name.png");
}
