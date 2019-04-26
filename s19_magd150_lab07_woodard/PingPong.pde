class PingPong{//class that when constructed creats a PingPong Ball
  PVector position;
  PVector velocity;
  PVector gravity;
  PingPong(){  //constructor creates pingpong with set starting point and gravity, and bounded random velocity
    position = new PVector(480,480);
    velocity = new PVector(random(3,6),random(-10,-7));
    gravity = new PVector(0,0.1);
  }
  void display(){//function used to display the pingpong ball and move it
    noStroke();
    fill(#fffff0);
    ellipse(position.x,position.y,50,50);
    position.add(velocity);
    velocity.add(gravity);
  }
  void reset(){  //used to reset pingpongs to starting position with new random velocities
    position.set(480,480);
    velocity.set(random(3,6),random(-10,-7));
  }
  void printstats(){  //debugging stats
    println(velocity.x);
    println(velocity.y);
    println(" ");
  }
};
