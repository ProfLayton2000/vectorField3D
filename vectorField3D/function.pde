PVector function(PVector p){
  float dx = p.y+0.1;
  float dy = p.x+0.1;
  float dz = p.z+0.1;
  return new PVector(dx,dy,dz);
}

boolean isInBounds(PVector pos){
  if (pos.x < -xBound) return false;
  if (pos.y < -yBound) return false;
  if (pos.z < -zBound) return false;
  if (pos.x > xBound) return false;
  if (pos.y > yBound) return false;
  if (pos.z > zBound) return false;
  return true;
}