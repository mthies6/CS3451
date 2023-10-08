void platypus(boolean hat){
  //rotateY(-time);
 
  //body
  pushMatrix();
  fill (0, 177, 177);
  specular (0, 0, 0);
  shininess (1.0);
  box (40, 15, 20);
  popMatrix();
  
  //4 legs 
  //front far
  pushMatrix();
  fill (0, 177, 177);
  specular (0, 0, 0);
  shininess (1.0);
  translate(16, 10, -7);
  box (3, 8, 2);
  popMatrix();
  
  //front close
  pushMatrix();
  fill (0, 177, 177);
  specular (0, 0, 0);
  shininess (1.0);
  translate(16, 10, 7);
  box (3, 8, 2);
  popMatrix();
  
  //back far
  pushMatrix();
  fill (0, 177, 177);
  specular (0, 0, 0);
  shininess (1.0);
  translate(-16, 10, -7);
  box (5, 8, 3);
  popMatrix();
  
  //back close
  pushMatrix();
  fill (0, 177, 177);
  specular (0, 0, 0);
  shininess (1.0);
  translate(-16, 10, 7);
  box (5, 8, 3);
  popMatrix();
  
  //feet
  //front far
  pushMatrix();
  fill (0, 177, 177);
  specular (0, 0, 0);
  shininess (1.0);
  translate(16.5, 15, -7);
  box (4, 2, 2);
  popMatrix();
  
  //front close
  pushMatrix();
  fill (0, 177, 177);
  specular (0, 0, 0);
  shininess (1.0);
  translate(16.5, 15, 7);
  box (4, 2, 2);
  popMatrix();

  //back far
  pushMatrix();
  fill (255, 150, 46);
  specular (0, 0, 0);
  shininess (1.0);
  translate(-15, 15, -7);
  box (8, 2, 3);
  popMatrix();
  
  //back close
  pushMatrix();
  fill (255, 150, 46);
  specular (0, 0, 0);
  shininess (1.0);
  translate(-15, 15, 7);
  box (8, 2, 3);
  popMatrix();
  
  //tail
  pushMatrix();
  fill (219, 144, 68);
  specular (0, 0, 0);
  shininess (1.0);
  translate(-20, 0, 0);
  rotateZ(PI/6);
  box (25, 2, 18);
  popMatrix();
  
  //beak
  pushMatrix();
  fill (255, 150, 46);
  specular (0, 0, 0);
  shininess (1.0);
  translate(20, 4, 0);
  rotateZ(-PI/12);
  box (15, 2, 18);
  popMatrix();
  
  //eyes
  //far
  pushMatrix();
  fill (255, 255, 255);
  specular(155, 155, 155);
  shininess(10.0);
  translate(19.5, -3, -9);
  sphereDetail(40);
  sphere(3);
  popMatrix();
  
  //close
  pushMatrix();
  fill (255, 255, 255);
  specular(155, 155, 155);
  shininess(10.0);
  translate(19.5, -3, 9);
  sphereDetail(40);
  sphere(3);
  popMatrix();
  
  //pupils
  //far
  pushMatrix();
  fill (0, 0, 0);
  specular(155, 155, 155);
  shininess(10.0); 
  translate(20 , -3, -9);
  scale(1.5, 1, 1); 
  sphereDetail(40);
  sphere(2);
  popMatrix();
  
  //close
  pushMatrix();
  fill (0, 0, 0);
  specular(155, 155, 155);
  shininess(10.0); 
  translate(20, -3, 9);
  scale(1.5, 1, 1); 
  sphereDetail(40);
  sphere(2);
  popMatrix();
  
  if (hat){
    pushMatrix();
    fill (92, 55, 17);
    shininess(10.0); 
    translate(10, -8, 0);
    cylinder(20, 1, 20);
    popMatrix();
    
    pushMatrix();
    fill (92, 55, 17);
    shininess(10.0); 
    translate(10, -9, 0);
    sphereDetail(40);
    sphere(10);
    popMatrix();
  }
}
