Turtle t1;

void setup()
{
    size(260,260);
    background(#000000);
    t1 = new Turtle();
}

void draw()
{
    noLoop();
    
    // Below is the code for one square.
    //==================================================================
    //t1.forward();
    //t1.right(90);
    //t1.forward(30);
    //t1.right(90);
    //t1.forward(30);
    //t1.right(90);
    //t1.forward(30);
    //t1.right(90);
    //==================================================================
    
    //==================================================================
    // Below is the code for 5 squares, rotated around. 
    for(int i = 0; i < 5; i++) //< for 5 different rotations
    {
      for(int j = 0; j < 4; j++) //< draw the four sides of...
      {
        t1.forward(100);
        t1.right(90); //< a square. What angle for other shapes?
      }
      t1.right(72); // rotate these squares.... 
    }
    //==================================================================
}
