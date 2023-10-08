void doof(int eyebrow){
  scale(1.5, 1.5, 1.5);
  translate(-25, 30, 0);
  rotateY(-PI/8);
  
  //head
  pushMatrix();
  fill (255, 211, 158);
  specular (0, 0, 0);
  shininess (1.0);
  rotateZ(-PI/10);
  triangularPrism(50, -50, -20);
  popMatrix();
  
  //left eye
  pushMatrix();
  fill (255, 255, 255);
  shininess(10.0);
  translate(20, -35, -1);
  sphereDetail(20);
  sphere(6);
  popMatrix();
  
  //left pupil
  pushMatrix();
  fill (0, 0, 0);
  shininess(10.0);
  translate(20, -35, 4);
  sphereDetail(20);
  sphere(2);
  popMatrix();
  
  //right eye
  pushMatrix();
  fill (255, 255, 255);
  shininess(10.0);
  translate(32, -35, -1);
  sphereDetail(20);
  sphere(6);
  popMatrix();
  
  //right pupil
  pushMatrix();
  fill (0, 0, 0);
  shininess(10.0);
  translate(32, -35, 4);
  sphereDetail(20);
  sphere(2);
  popMatrix();
  
  //eyebrows
  if (eyebrow == 2){
    pushMatrix();
    fill (87, 59, 24);
    shininess (1.0);
    translate(20, -43, 2);
    rotateZ(PI/5);
    box (10, 2, 2);
    popMatrix();
    
    //right eyebrow
    pushMatrix();
    fill (87, 59, 24);
    shininess (1.0);
    translate(32, -43, 2);
    rotateZ(-PI/5);
    box (10, 2, 2);
    popMatrix();
  } else if (eyebrow == 1){
    //left eyebrow
    pushMatrix();
    fill (87, 59, 24);
    shininess (1.0);
    translate(20, -40, 2);
    box (8, 1, 2);
    popMatrix();
    
    //right eyebrow
    pushMatrix();
    fill (87, 59, 24);
    shininess (1.0);
    translate(30, -45, 2);
    rotateZ(-PI/4);
    box (8, 1, 2);
    popMatrix();
  } else {
    //left eyebrow
    pushMatrix();
    fill (87, 59, 24);
    shininess (1.0);
    translate(20, -43, 2);
    box (8, 1, 2);
    popMatrix();
    
    //right eyebrow
    pushMatrix();
    fill (87, 59, 24);
    shininess (1.0);
    translate(32, -43, 2);
    box (8, 1, 2);
    popMatrix();
  }
  
  //nose
  pushMatrix();
  fill (255, 211, 158);
  shininess (1.0);
  translate(0, -20, 0);
  triangularPrism(20, -7, 4);
  popMatrix();
  
  //mouth
  if (eyebrow == 2){
    pushMatrix();
    fill (0, 0, 0);
    shininess (1.0);
    translate(15, -10, 0);
    rotateZ(-PI/12);
    scale(2.5, 0.75, 1);
    sphere (4);
    popMatrix();
  
  } else {
    pushMatrix();
    fill (0, 0, 0);
    shininess (1.0);
    translate(10, -10, 0);
    rotateZ(-PI/12);
    box (12, 1, 2);
    popMatrix();
  }
  
  //hair
  pushMatrix();
  fill (87, 59, 24);
  shininess (1.0);
  translate(25, -63, 2);
  rotateZ(-PI/6);
  box (4, 25, 5);
  popMatrix();
  
  pushMatrix();
  fill (87, 59, 24);
  shininess (1.0);
  translate(20, -60, 2);
  rotateZ(-PI/3);
  box (4, 25, 5);
  popMatrix();
  
  pushMatrix();
  fill (87, 59, 24);
  shininess (1.0);
  translate(34, -64, 2);
  rotateZ(PI/8);
  box (4, 25, 5);
  popMatrix();
  
  pushMatrix();
  fill (87, 59, 24);
  shininess (1.0);
  translate(40, -58, 2);
  rotateZ(PI/3);
  box (4, 25, 5);
  popMatrix();
  
  //neck
  pushMatrix();
  fill (255, 211, 158);
  specular (0, 0, 0);
  shininess (1.0);
  translate(40, -5, -10);
  rotateZ(-PI/10);
  box(10, 20, 20);
  popMatrix();
  
  //shirt
  pushMatrix();
  fill (0, 0, 0);
  specular (0, 0, 0);
  shininess (1.0);
  translate(-15, 90, 10);
  rotateZ(-PI/6);
  triangularPrism(100, -50, -50);
  popMatrix();
}

void exclamation(){
  pushMatrix();
  fill (255, 0, 0);
  shininess (10.0);
  box(5, 40, 5);
  popMatrix();
  
  pushMatrix();
  fill (255, 0, 0);
  shininess (10.0);
  translate(0, 25, 0);
  box(5, 5, 5);
  popMatrix();
}

void exclamationSet(){
  rotateY(-PI/4);
  
  pushMatrix();
  translate(50, -50, 0);
  rotateY(PI/8);
  if ((int)(time*10) % 2 == 0){
    rotateZ(PI/12);
  } else {
    rotateZ(-PI/12);
  }
  exclamation();
  popMatrix();
  
  pushMatrix();
  translate(60, -110, 0);
  rotateY(PI/8);
  if ((int)(time*10) % 2 == 0){
    rotateZ(-PI/12);
  } else {
    rotateZ(PI/12);
  }
  exclamation();
  popMatrix();
 
  pushMatrix();
  translate(135, -85, 0);
  if ((int)(time*10) % 2 == 0){
    rotateZ(-PI/12);
  } else {
    rotateZ(PI/12);
  }
  rotateY(PI/8);
  exclamation();
  popMatrix();
}
