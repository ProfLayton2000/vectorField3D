

void drawAxes(){
  colorMode(RGB);
  strokeWeight(2);
  
  stroke(0,0,255); //x line 
  line(-xBound,0,0,xBound,0,0);
  
  stroke(0,255,0); //y line
  line(0,-yBound,0,0,yBound,0);
  
  stroke(255,0,0); //z line
  line(0,0,-zBound,0,0,zBound);
}

void drawBounds(){
  strokeWeight(2);
  stroke(100);
  line(-xBound,-yBound,-zBound, xBound,-yBound,-zBound);
  line(-xBound, yBound,-zBound, xBound, yBound,-zBound);
  line(-xBound,-yBound, zBound, xBound,-yBound, zBound);
  line(-xBound, yBound, zBound, xBound, yBound, zBound);
  
  line(-xBound,-yBound, zBound,-xBound,-yBound,-zBound);
  line(-xBound, yBound, zBound,-xBound, yBound,-zBound);
  line( xBound, yBound, zBound, xBound, yBound,-zBound);
  line( xBound,-yBound, zBound, xBound,-yBound,-zBound);
  
  line( xBound,-yBound,-zBound, xBound, yBound,-zBound);
  line( xBound,-yBound, zBound, xBound, yBound, zBound);
  line(-xBound,-yBound,-zBound,-xBound, yBound,-zBound);
  line(-xBound,-yBound, zBound,-xBound, yBound, zBound);
}