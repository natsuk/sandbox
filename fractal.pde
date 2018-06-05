void setup() {
  size(500, 500);
  noFill();
  circlesR(250, 250, 100, 6);
}

void circlesR(float x, float y, float r, int n) {
  ellipse(x, y, r*2, r*2);
  if (n>1) {
    float newR = r/2;
    circlesR(x+r, y, newR, n-1); 
    circlesR(x-r, y, newR, n-1); 
    circlesR(x, y+r, newR, n-1); 
    circlesR(x, y-r, newR, n-1); 
  }
}
