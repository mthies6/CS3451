void setup() {
  size (800, 800);
}

void draw() {
  background (255, 255, 255);
  noStroke();
  
  //main rectangle values
  float mainCenter = 400;
  float mainRadius = width/4;
  int level = 1;
  
  drawPentagon(mainCenter, mainCenter, mainRadius, 0);
  drawSatellites(mainCenter, mainCenter, mainRadius, level);
}

//draws a pentagon
void drawPentagon(float centerX, float centerY, float radius, float level){
  fill (centerX % 255, centerY % 255, 240 - (level * radius) % 255);
  //all black version
  //fill (0, 0, 0);
  beginShape();
  for (int i = 0; i < 5; i++){
    vertex(centerX + sin((level * PI/5) + i * 2 * PI/5) * radius, centerY - cos((level * PI/5) + i * 2 * PI/5) * radius);
  }
  endShape(CLOSE);
}

void drawSatellites(float parentCenterX, float parentCenterY, float parentRadius, int level){
   if (level == 5){
     return; 
   } else {
    for (int i = 0; i < 5; i++){
      float centerX = parentCenterX + (parentRadius * (1 + (mouseX/(float)800))) * sin((level * PI/5) + i * 2 * PI/5);
      float centerY = parentCenterY - (parentRadius * (1 + (mouseX/(float)800))) * cos((level * PI/5) + i * 2 * PI/5);
      float radius = parentRadius * ((mouseY - 800) * (-1))/(float)1600;
      drawPentagon(centerX, centerY, radius, level);
      drawSatellites(centerX, centerY, radius, level + 1);
    }
  }
}
