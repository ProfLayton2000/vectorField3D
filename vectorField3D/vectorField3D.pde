float xBound = 50;
float yBound = 50;
float zBound = 50;

float timeScale = 0.01;

int nDead = 0;

//centre

//number of dots along x
//number of dots along y
//number of dots
int nX = 5; //left, 0, right
int nY = 5;
int nZ = 5;

import peasy.*;

boolean showPath = !true;
Dot[] dots;

PeasyCam cam;

void setup() {
  size(800,800,P3D);
  cam = new PeasyCam(this, 400);
  cam.setMinimumDistance(100);
  cam.setMaximumDistance(200);
  cam.lookAt(0,0,0);
  
  dots = new Dot[(2*nX+1)*(2*nY+1)*(2*nZ+1)];
  for (int i = -nX; i <= nX; i++){
    float x = map(i,-nX,nX,-xBound, xBound);
    for (int j = -nY; j <= nY; j++){
      float y = map(j,-nY,nY,-yBound, yBound);
      for (int k = -nZ; k <= nZ; k++){
        float z = map(k,-nZ,nZ,-zBound, zBound);
        float col = dist(0,0,0,x,y,z);
        float maxDist = dist(0,0,0,xBound,yBound,zBound);
        col = map(col,0,maxDist,0,255);
        dots[(i+nX)*((2*nY+1)*(2*nZ+1)) + (j+nY)*(2*nZ+1) + (k+nZ)] = new Dot(x,y,z,col);
      }
    }
  }
}

void draw(){
  rotateX(-PI/3);
  rotateY(-PI/3);
  background(0);
  drawAxes();
  drawBounds();
  //int i = 0;
  
  for (Dot d: dots){
    //println("Showed dot",i);
    d.show(0.5);
    d.update(timeScale);
    //i++;
  }
}