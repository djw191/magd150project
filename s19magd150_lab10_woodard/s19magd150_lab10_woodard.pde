PImage savImg;
float scale;
color bckgrnd;
int counter, u, v, count;
void setup(){
  size(720,720,P3D);
  bckgrnd = color(64,64,0);
  counter = 0;
  savImg = loadImage("cherrycoke.jpg");
  u = savImg.width;
  v = savImg.height;
  sphereDetail(48);
}
void draw(){
  background(bckgrnd);
  ambientLight(60,20,20,360,720,360);
  pointLight(255, 255, 255, 360, 720, 0);
  directionalLight(128,128,128,-1,-1,-1);
  
  beginCamera();
    translate(width/2,height/2,100);
    camera(0, 0, 720, 0, 0, 0, 0, -1, 0);
    rotateY(count/90.0);
    translate(-width/2,-height/2,-100);
    endCamera();
    
  pushMatrix();
    translate(width/2, height/2, 100);
    rotateX(0+(PI/180)*count);
    translate(0, 0, 100);
    beginShape();//front
      texture(savImg);
      vertex(-100, -100, 0, 0, 0);
      vertex(100, -100, 0, u, 0);
      vertex(100, 100, 0, u, v);
      vertex(-100, 100, 0, 0, v);  
      endShape(CLOSE);
    beginShape();//right
      texture(savImg);
      vertex(100, -100, 0, 0, 0);
      vertex(0, -100, -200, u, 0);
      vertex(0, 100, -200, u, v);
      vertex(100, 100, 0, 0, v);  
      endShape(CLOSE);
    beginShape();//left
      texture(savImg);
      vertex(-100, -100, 0, 0, 0);
      vertex(0, -100, -200, u, 0);
      vertex(0, 100, -200, u, v);
      vertex(-100, 100, 0, 0, v);  
      endShape(CLOSE);
    beginShape();//top
      texture(savImg);
      vertex(-100, -100, 0, 0, 0);
      vertex(0, -100, -200, u, 0);
      vertex(100, -100, 0, u, v);  
      endShape(CLOSE);
    beginShape();//bottom
      texture(savImg);
      vertex(-100, 100, 0, 0, 0);
      vertex(0, 100, -200, u, 0);
      vertex(100, 100, 0, u, v); 
      endShape(CLOSE);
    popMatrix();
  
  pushMatrix();
    translate(360,0,100);
    box(1440,10,1440);
    popMatrix();
    
  pushMatrix();
    pushStyle();
      fill(0,255,255);
      noStroke();
      translate(360,100,100);
      sphere(90);
      popStyle();
    popMatrix();
      
  count++;
}
void mouseClicked(){
  if(mouseButton == LEFT){
    save("savImg.tif");
    savImg = loadImage("savImg.tif");
    texture(savImg);
    u = savImg.width;
    v = savImg.height;
  }
  if(mouseButton == RIGHT){
    if(counter == 0){
      bckgrnd = color(64, 0, 64);
      counter++;
    }else if(counter == 1){
      bckgrnd = color(64,64,0);
      counter++;
    }else{
      bckgrnd = color(0,64,64);
      counter = 0;
    }
  }
}
