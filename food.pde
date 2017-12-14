class Food
{
  
  float x;
  float y;
  float s = 100;

  Food()
  {
    x = random(1200);
    y = random(1200);
  }

  void display()
  {
    image(food, x, y, s, s);
  }
  float getX() {
    return x;
  }

  float getY()
  {
    return y;
  }

  boolean collisionCheck(float cowX, float cowY, float cowS) 
  {
    return overlap(new PVector(cowX, cowY), (int)cowS, new PVector(x, y), (int)s);

  }

  boolean overlap(PVector p1, int len1, PVector p2, int len2) {

    boolean over=false;

    //CORNERS FIG #2
    float  cl=p2.x-len2;  //left corner
    float  cr=p2.x+len2;  //right corner

    if (abs(cl-p1.x)<len1/2.0 || abs(cr-p1.x)<len1/2.0) {   //Left or Right corner inside width of p1?

      float  ct=p2.y-len2;  //Top corner
      float  cb=p2.y+len2;  //Bottom corner

      if (abs(ct-p1.y)<len1/2.0 || abs(cb-p1.y)<len1/2.0) {

        
        
        s+=10;

        return true;
      }
    }

    return over;
  }


}