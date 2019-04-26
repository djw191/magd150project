Cloud myInstanceVar;
void setup(){
  size(1280,720);
  background(#00FFFF);
  myInstanceVar = new Cloud();
}
void draw(){
  background(#00FFFF);
  myInstanceVar.display(mouseX,mouseY);//calls the display function in cloud to draw the cloud where the mouse cursor is
  if(mousePressed == true){//clears screen when mouse is pressed
    clear();
  }
}
int intrand(int a, int b){//function to get random number as an integer, not float
  return floor(random(a,b));
}
void clear(){//function to overwrite screen with a blank background
  background(#00FFFF);
}
