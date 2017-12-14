class Milker
{

  float x;
  float y;
  float s;
  PImage milker;
  
  Milker()
  {
    milker = loadImage("milker.png");
   
    x = random(1000);
    y = 0;
    s = 100;
  }

  void display()
  {
    image (milker, x, y, s, s);
  }
  
  boolean checkCollide(float cowX, float cowY, float cowS){
    return overlap(new PVector(cowX, cowY), (int)cowS, new PVector(x, y), (int)s); 
  }
  
  boolean overlap(PVector cowP, int cowSize, PVector milkPos, int MilkSize) {

    boolean over=false;

    //CORNERS FIG #2
    float  cl=milkPos.x-MilkSize/2;  //left corner
    float  cr=milkPos.x+MilkSize/2;  //right corner

    if (abs(cl-cowP.x)<cowSize/2.0 || abs(cr-cowP.x)<cowSize/2.0) {   //Left or Right corner inside width of p1?

      float  ct=milkPos.y-MilkSize/2;  //Top corner
      float  cb=milkPos.y+MilkSize/2;  //Bottom corner

      if (abs(ct-cowP.y)<cowSize/2.0 || abs(cb-cowP.y)<cowSize/2.0) {

        //PREV conditional can be replaced by:  if (abs(p2.y-p1.y)<len1/2.0+len2/2.0) 

        return true;
      }
    }

    return over;
  }
}