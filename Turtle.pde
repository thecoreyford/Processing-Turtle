
// This class was made by Dj Faustus and edited by Corey.
// The url is https://openprocessing.org/sketch/26896/
// Do not credit students for this class. 
// If students do hack the code, please leave comment showing where. 
class Turtle {
    int x,y;
    int oldx,oldy;
    float angle;
    color tcolor;
    color bgColor = #000000;
    
    //Constructor
    Turtle() 
    {
        oldx = int(width/2);
        oldy = int(height/2);
        x = oldx;
        y = oldy;
        tcolor = #FFFFFF;
        angle = 0;
        stroke (tcolor);
    }
    
    void forward (int step) {
        x = oldx - int(step * cos(radians(angle+90)));
        y = oldy - int(step * sin(radians(angle+90)));
        line(oldx,oldy,x,y);
        oldx = x;
        oldy = y;
    }

    void back (int step) {
        x = oldx + int(step * cos(radians(angle+90)));
        y = oldy + int(step * sin(radians(angle+90)));
        line(oldx,oldy,x,y);
        oldx = x;
        oldy = y;
    }

    void home () {
        oldx = int(width/2);
        oldy = int(height/2);
        line(oldx,oldy,x,y);
        oldx = x;
        oldy = y;
        angle = 0.0;
    }

    void setx(int step) {
        x = oldx + step;
        oldx = x;
    }

    void sety(int step) {
        y = oldy + step;
        oldy = y;
    }

    void setxy(int stepx, int stepy) {
        x = oldx + stepx;
        y = oldy + stepy;
        oldx = x;
        oldy = y;
    }
    
    void left (int dangle) {
        angle -= dangle;
    }

    void right (int dangle) {
        angle += dangle;
    }

    void setheading (int nangle) {
        angle = nangle;
    }
    
    void pencolor (color ncolor) {
        tcolor = ncolor;
        stroke (tcolor);
    }
    
    void penup() {
        noStroke();
    }

    void pendown() {
        stroke (tcolor);
    }

    void penerase() {
        stroke (bgColor);
    }
}              
