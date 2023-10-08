//I will be replicating the exclamation points in scene 5 with instancing
//The function is defined in doof.pde
float time = 0;  // keep track of the "time"
float s1 = 1;
float s2 = 2;
float s3 = 5;
float s4 = 6;
float s5 = 8;

void setup() {
  size (600, 600, P3D); 
  noStroke();   
}

void draw() {
  //set up 
  resetMatrix();
  background(102, 73, 143);
  perspective (PI * 0.333, 1.0, 0.01, 1000.0);
  ambientLight (100, 100, 100);
  lightSpecular (204, 204, 204);
  directionalLight (200, 200, 200, 0, 0.75, -1);
  
  //camera positioning
  if (time < s1){
    //scene 0: doof
    camera (40.0, -80.0, 150.0, 100, -80.0, -1.0, 0.0, 1.0, 0.0);
  } else if (time < 1.5){ //transition to 1
    camera (40.0 -(100*(time - s1)), -80 + (140*(time - s1)), 150.0 - (100*(time - s1)), 100 - (320*(time - s1)), -80 + (180*(time - s1)), -1.0, 0.0, 1.0, 0.0);
  } else if (time < 4.5){
    //scene 1: initial platypus
    //scene 2: move platypus 1, add another platypus
    camera (-10.0, -10.0, 100.0, -60, 10.0, -1.0, 0.0, 1.0, 0.0);
  } else if (time < s3){ //transition to 3
    camera (-10.0 + (100*(time - 4.5)), -10.0 - (140*(time - 4.5)), 100.0 + (100*(time - 4.5)), -60 + (320*(time - 4.5)), 10.0 - (180*(time - 4.5)), -1.0, 0.0, 1.0, 0.0);
  } else if (time < 5.5){
    //scene 3: doof confused
    camera (40.0, -80.0, 150.0, 100, -80.0, -1.0, 0.0, 1.0, 0.0);
  } else if (time < s4){ //transition to 4
    camera (40.0 -(100*(time - 5.5)), -80 + (140*(time - 5.5)), 150.0 - (100*(time - 5.5)), 100 - (320*(time - 5.5)), -80 + (180*(time - 5.5)), -1.0, 0.0, 1.0, 0.0);
  } else if (time < 7.5){
    //scene 4: 2 perrys!
    //camera at plat + center plat 
    camera (-10.0, -10.0, 100.0, -60, 10.0, -1.0, 0.0, 1.0, 0.0);
  } else if (time < s5){ //transition to 5
    camera (-10.0 + (100*(time - 7.5)), -10.0 - (140*(time - 7.5)), 100.0 + (100*(time - 7.5)), -60 + (320*(time - 7.5)), 10.0 - (180*(time - 7.5)), -1.0, 0.0, 1.0, 0.0);
  } else {
    //scene 5: doof angry and alarmed
    //camera at doof with doof centered
    camera (40.0, -80.0, 150.0, 100, -80.0, -1.0, 0.0, 1.0, 0.0);
  }
  
  //floor
  pushMatrix();
  fill(150, 150, 150);
  translate(0, 150, 0);
  box(1000, 100, 400);
  popMatrix();
  
  //object positions
  if (time < s1){
    //scene 0: doof
    pushMatrix();
    translate(100, -80, 0);
    doof(0);
    popMatrix();
  } else if (time < s2){
    //scene 1: initial platypus
    pushMatrix();
    translate(100, -80, 0);
    doof(0);
    popMatrix();
    
    pushMatrix();
    translate(-80, 20, 20);
    rotateY(-PI/8);
    platypus(false);
    popMatrix();
    
  } else if (time < s3){
    //scene 2: move platypus 1, add another platypus
    
    float xVal = -80;
    
    //moving plat
    pushMatrix();
    if (time < (3.5)){
      
      xVal -= (10*(time - s2));  
      translate(xVal, 20, 20);
      if (time > 2.5){
        if ((int)(time*25) % 2 == 0){
          rotateZ(PI/40);
        } else {
          rotateZ(-PI/40);
        }
      } else {
        rotateY(-PI/8 + (time-1.8)/8); 
      }
      platypus(false);
      popMatrix();
      
      //teleport (?) sphere thing
      pushMatrix();
      fill (247, 250, 162);
      specular(155, 155, 155);
      shininess(10.0); 
      translate(-40, 20, 0);
      sphereDetail(40);
      sphere(30 - ((time-1.5)*10));
      popMatrix();
      
    } else {
      translate(xVal - 15, 20, 20);
      platypus(false);
      popMatrix();
      
      //new guy
      pushMatrix();
      translate(-40, 20, 0);
      rotateY(-PI/8);
      platypus(false);
      popMatrix();
      
      pushMatrix();
      translate(100, -80, 0);
      doof(1);
      popMatrix();
    }
  } else if (time < s4){
    //scene 3: doof confused
    pushMatrix();
    translate(100, -80, 0);
    doof(1);
    popMatrix();
    
    if (time > 5.5){
      //new guy
      pushMatrix();
      translate(-40, 20, 0);
      rotateY(-PI/8);
      platypus(true);
      popMatrix();
      
      //OG
      pushMatrix();
      translate(-95, 20, 20);
      rotateY(-PI/8);
      platypus(true);
      popMatrix();
    }
    
  } else if (time < s5){
    //scene 4: 2 perrys!
    if (time > 8 ){
      pushMatrix();
      translate(100, -80, 0);
      doof(2);
    popMatrix();
    } else {
      pushMatrix();
      translate(100, -80, 0);
      doof(1);
      popMatrix();
    }
    
    pushMatrix();
    translate(100, -80, 0);
    doof(2);
    popMatrix();
    
    //new guy
    pushMatrix();
    translate(-40, 20, 0);
    rotateY(-PI/8);
    platypus(true);
    popMatrix();
      
    //OG
    pushMatrix();
    translate(-95, 20, 20);
    rotateY(-PI/8);
    platypus(true);
    popMatrix();
  } else {
    //scene 5: doof angry and alarmed
    pushMatrix();
    translate(100, -80, 0);
    doof(2);
    popMatrix();
    
    exclamationSet();
  }
  // step forward the time
  time += 0.01;
}
