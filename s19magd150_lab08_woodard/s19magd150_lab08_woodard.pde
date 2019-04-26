import processing.pdf.*;
boolean recordScreen;
PFont comicsans, sans;
String[] mottext;
int motlength;
StringBuilder mots;
PImage moti1;  //used image here to show a more complex image than I could have drawn
boolean rtrotate;
int counter;

void setup(){
  size(600,863);
  comicsans = createFont("mscs.ttf",10);
  sans = createFont("sans.ttf", 56);
  mottext = loadStrings("mottext.txt");
  moti1 = loadImage("hit.jpg");
  motlength = mottext.length;
  mots = new StringBuilder();
  for(int i=0; i<motlength; ++i){
    mots.append(mottext[i]);
    mots.append("\n");
  }
  frameRate(60);
}
void draw(){
  if (recordScreen) {    //code that actually captures the screen to a pdf, is at the end of draw also
    beginRecord(PDF, "Moti.pdf");
  }
  
  background(0);
  pushStyle();
    imageMode(CENTER);
    image(moti1,width/2,height/2,moti1.width/2.5,moti1.height/2.5);
    popStyle();
    
  pushStyle();    //code in this chunk controls the drawing of the motivational text, and the rotation of it also
  pushMatrix();
  translate(width*.5, height*.93);
  rotate(PI*counter/36);
    if(rtrotate){
      counter++;
    }
    textAlign(CENTER);
    textFont(sans);
    textSize(56);
    fill(255);
    text(mots.toString(), 0, 0);
    popMatrix();
    popStyle();
    
  pushStyle();
    textAlign(RIGHT, TOP);
    textFont(comicsans);
    textSize(10);
    fill(255);
    text("Derek Woodard, Age 19", width, 0);
    popStyle();
    
  if (recordScreen) {
    endRecord();
    recordScreen = false;
  }
}
void mouseClicked() {    //this code is to check for mouseclicks to either trigger the code to save to pdf or to start/stop rotating the motivational text
  if(mouseButton == LEFT){
    recordScreen = true;
  }
  if(mouseButton == RIGHT){
    if(rtrotate==false){
      rtrotate=true;
    }else{
      rtrotate=false;
    }
  }
}
