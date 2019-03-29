class Dot{
  PVector pos;
  float hue;
  //ArrayList<PVector> vertices;
  boolean dead;
  
  Dot(float x, float y, float z, float h){
    pos = new PVector(x,y,z);
    hue = h;
    dead = false;
    //vertices = new ArrayList<PVector>();
    //vertices.add(new PVector(x,y,z));
  }
  
  void show(float r){
    if (dead) return;
    colorMode(HSB);
    strokeWeight(r);
    stroke(hue,255,255);
    fill(hue,255,255);
    
    translate(-pos.x,-pos.y,-pos.z);
    sphere(r);
    translate(pos.x,pos.y,pos.z);
    
    //if (mode){
    //  noFill();
    //  beginShape();
    //  for (PVector v: vertices){
    //    vertex(v.x,v.y, v.z);
    //  }
    //  endShape();
    //}
  }
  
  void update(float dt){
    if (!dead){
      PVector dDir = function(pos);
      dDir.mult(dt);
      
      pos.x += dDir.x;
      pos.y += dDir.y;
      pos.z += dDir.z;
    } else {
      return;
    }
    
    if (!isInBounds(pos)){
      dead = true;
      nDead++;
      println(nDead,"dead dots");
      if (nDead == (2*nX+1)*(2*nY+1)*(2*nZ+1)){
        println("All dots dead");
      }
    }
  }
  
}