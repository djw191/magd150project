//Reach Forge World Vidoc Property of Bungie, taken from:  https://www.youtube.com/watch?v=XCcmrL29WII
import processing.video.*;//code to import libraries
import processing.sound.*;

SoundFile reachVidocAudio;
Movie reachVidoc;
PImage drawnImg = createImage(384,384, RGB);
PImage coke;
void setup(){
  size(1280,720);
  reachVidocAudio = new SoundFile(this,"rva.mp3");
  reachVidocAudio.amp(0.5);
  reachVidocAudio.play();
  reachVidoc = new Movie(this,"haloreachvidoc.mov");
  reachVidoc.frameRate(30);
  reachVidoc.play();
  coke = loadImage("cherrycoke.jpg");
  coke.resize(384,384);
  drawnImg.loadPixels();  //code for creating triple gradient, one horizontal from green to cyan and one progressive from 0 red on the first pixel to 255 on the last
    for(int i=0; i<384;i++){
      for(int j=0; j<384;j++){
         drawnImg.pixels[(i*384)+j] = color(round(((i*j)/147456.0)*255),255,round((j/384.0)*255));
      }
    }
    drawnImg.updatePixels();
  drawnImg.resize(1280,720);
}
void draw(){
  image(drawnImg,0,0);
  image(reachVidoc,427,240);//draws video through img
}
void movieEvent(Movie m){  //needed to load new frames for the video
  m.read();
}
