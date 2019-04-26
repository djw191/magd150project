PingPong[] ball = new PingPong[10];
CarnWheel cw = new CarnWheel();
void setup(){
  frameRate(60);
  size(1280,720);
  background(#00FFFF);
  for(int i=0;i<10;i++){
    ball[i] = new PingPong(); 
  }
}
void draw(){
  background(#00FFFF);
  for(int i = 0; i < 10; i++){//initializes pingpongs
    ball[i].display();
  }
  if(mousePressed == true){//resets pingpongs if you press mouse
    for(int i = 0; i < 10; i++){
      ball[i].reset();
    }
  }
  beginShape();//shape for prize cup
  fill(#ff0202);
  noStroke();
  vertex(1130,480);
  vertex(1280,480);
  vertex(1255,720);
  vertex(1155,720);
  endShape();
  cw.display();///displays carnival wheel
}
