class Cloud{//class that when constructed creaets a randomly sized cloud with shadow
  int greyshade, size1, size2, size3, spacing1, spacing2;
  int shadowsize;
  Cloud(){
    greyshade = intrand(128,211);
    size1 = intrand(100,150);
    size2 = intrand(150,200);
    size3 = intrand(100,150);
    spacing1 = intrand(75,100);
    spacing2 = intrand(spacing1+75,spacing1+100);
    shadowsize=spacing2+(size1/2)+(size3/2);
  }
  void display(int x, int y){//function used to display the cloud where ever the x and y provided to it are
    translate(x,y);
    noStroke();
    fill(128,128,128,128);
    rect(-(size1/2),0,shadowsize,720);
    fill(greyshade,greyshade,greyshade);
    ellipse(0,0,size1,size1);
    ellipse(spacing1,0,size2,size2);
    ellipse(spacing2,0,size3,size3);
  }
};
