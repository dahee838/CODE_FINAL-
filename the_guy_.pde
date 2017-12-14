class Guy
{

  float guyX;
  float guyY;
  float guys;
  PImage bro;
  
  Guy()
  {
    bro = loadImage("EAT.png");
   
    guyX = random(1000);
    guyY = 500;
    guys = 500;
  }

  void display()
  {
    image (bro, guyX, guyY, guys, guys);
  }
  boolean checkCollide(float cowX, float cowY, float cowS){
    return overlap(new PVector(cowX, cowY), (int)cowS, new PVector(guyX, guyY), (int)guys); 
  }
  
  boolean overlap(PVector cowP, int cowSize, PVector guy2, int guylen) {

    boolean over=false;

    //CORNERS FIG #2
    //float  cl=p2.x-len2/2;  //left corner
    //float  cr=p2.x+len2/2;  //right corner

    //if (abs(cowP.x)<len1/2.0 || abs(cr-p1.x)<len1/2.0) {   //Left or Right corner inside width of p1?

//      float  ct=p2.y-len2/2;  //Top corner
//      float  cb=p2.y+len2/2;  //Bottom corner

      if (cowP.x<guy2.x && cowP.x+cowSize<guy2.x && cowP.y<guy2.y && cowP.y+cowSize<guy2.y) {

        //PREV conditional can be replaced by:  if (abs(p2.y-p1.y)<len1/2.0+len2/2.0) 

        return true;
      }
    //}

    return over;
  }
}