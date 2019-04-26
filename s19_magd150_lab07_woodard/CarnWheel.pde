class CarnWheel{  //used to create a carnival wheel of 20diamter
  float diameter = 200;
  CarnWheel(){
    
  }
  void display(){
    translate(mouseX,mouseY);  //three commands make the carnival wheel spin and act erratically
    scale(random(0.1,2.0));
    rotate(millis()/50);
    for(int i = 0; i < 16; i++){
      if(i%2 == 0)
        fill(#FF0000);
      else
        fill(#FFFFFF);
      arc(0,0,20,20,(i*(PI/8.0)),((i+1)*(PI/8.0)));
    }
  }
};
