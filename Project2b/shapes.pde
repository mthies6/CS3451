// Draw a cylinder of a given radius, height and number of sides.
// The base is on the y=0 plane, and it extends vertically in the y direction.
void cylinder (float radius, float height, int sides) {
  int i,ii;
  float []c = new float[sides];
  float []s = new float[sides];

  for (i = 0; i < sides; i++) {
    float theta = TWO_PI * i / (float) sides;
    c[i] = cos(theta);
    s[i] = sin(theta);
  }
  
  // bottom end cap
  normal (0.0, -1.0, 0.0);
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape(TRIANGLES);
    vertex (c[ii] * radius, 0.0, s[ii] * radius);
    vertex (c[i] * radius, 0.0, s[i] * radius);
    vertex (0.0, 0.0, 0.0);
    endShape();
  }
  
  // top end cap
  normal (0.0, 1.0, 0.0);
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape(TRIANGLES);
    vertex (c[ii] * radius, height, s[ii] * radius);
    vertex (c[i] * radius, height, s[i] * radius);
    vertex (0.0, height, 0.0);
    endShape();
  }
  
  // main body of cylinder
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape();
    normal (c[i], 0.0, s[i]);
    vertex (c[i] * radius, 0.0, s[i] * radius);
    vertex (c[i] * radius, height, s[i] * radius);
    normal (c[ii], 0.0, s[ii]);
    vertex (c[ii] * radius, height, s[ii] * radius);
    vertex (c[ii] * radius, 0.0, s[ii] * radius);
    endShape(CLOSE);
  }
}

void triangularPrism(float b, float h, float l){
  //front face
  beginShape();
  vertex(b, 0, 0);
  vertex(b, h, 0);
  vertex(0, 0, 0);
  endShape(CLOSE);
  
  //left rectangle 
  beginShape();
  vertex(0, 0, 0);
  vertex(0, 0, l);
  vertex(b, h, l);
  vertex(b, h, 0);
  endShape(CLOSE);
  
  //right rectangle 
  beginShape();
  vertex(b, h, 0);
  vertex(b, h, l);
  vertex(b, 0, l);
  vertex(b, 0, 0);
  endShape(CLOSE);
  
  //botton rectangle
  beginShape();
  vertex(b, 0, 0);
  vertex(b, 0, l);
  vertex(0, 0, l);
  vertex(0, 0, 0);
  endShape(CLOSE);
  
  //back face
  beginShape();
  vertex(0, 0, l);
  vertex(b, 0, l);
  vertex(b, h, l);
  endShape(CLOSE);
}
