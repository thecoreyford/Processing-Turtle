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
    t1.penup();
    t1.setxy(30,50);
    t1.pendown();
    t1.forward(30);
    t1.right(90);
    t1.forward(30);
    t1.right(90);
    t1.forward(30);
    t1.right(90);
    t1.forward(30);
    t1.right(90);
}
