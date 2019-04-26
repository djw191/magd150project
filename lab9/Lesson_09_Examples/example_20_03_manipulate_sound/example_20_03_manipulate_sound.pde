// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-4: Manipulating sound (with Sonia)

import processing.sound.*;

// A sound file object
SoundFile song;
float volume = 0.5;
void setup() {
  size(200, 200);

  // Load a sound file
  song = new SoundFile(this, "beat.wav");

  // Loop the sound forever
  // (well, at least until stop() is called)
  song.loop();
}

void draw() {
  background(255);


// Set the volume to a range between 0 and 1.0 on mouseclick
 println(volume);
 song.amp(volume);
  
  // Set the rate to a range between 0.1 and 4
  // Changing the rate alters the pitchf
  float speed = map(mouseY, 0, height, 0, 2);
  song.rate(speed);

// Set the directional audio to a range between -1.0 and 1.0
  float panning = map(mouseX, 0., width, -1.0, 1.0);
  song.pan(panning);

  // Draw some circles to show what is going on
  stroke(0);
  fill(51, 100);
  ellipse(mouseX, 100, 48, 48);
  stroke(0);
  fill(51, 100);
  ellipse(100, mouseY, 48, 48);
}

void mouseClicked(){
 
  if (mouseButton == LEFT){
      volume += 0.1;
  }else if (mouseButton== RIGHT){
        volume -= 0.1;
  }
}
