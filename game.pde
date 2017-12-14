class Game {

  Game()
  {
    case2to3 = false;
    nibs = new ArrayList<Food>();
    milk = new ArrayList<Milker>();
    guy = new ArrayList<Guy>();
  } 
  //instantiate new stuff---------------------


  //deleting extras ----------------------
  void showGame() {

    if (random(1) < 0.01)
    {
      nibs.add(new Food());
    }

    if (sec%5==0)
    {
      milk.add(new Milker());
      guy.add(new Guy());
    }
    if (guy.size() > 5)
    {
      for (int u = 5; u < guy.size(); u++) {
        guy.remove(u);
      }
    }
    if (milk.size() > 5)
    {
      for (int u = 5; u < milk.size(); u++) {
        milk.remove(u);
      }
    }
    image(lady, x, y, s, s);
    //image(male, x_m, y, 200, 200);
    //x_m = lerp(x, y, .000004);

    //check colliding-----------------------
    
    boolean collided = false;
    for (int i = 0; i < nibs.size(); i++) 
    {
      //nibs[i].display();
      Food f = nibs.get(i);

      if (f.collisionCheck(x, y, s)) 
      {
        s += 10;
        nibs.remove(i);
        collided = true;
      }

      if (collided) 
      {
        break;
      }
      f.display();
    }



    for (int j = 0; j < milk.size(); j++)
    {
      Milker m = milk.get(j);
      m.display();
      if (m.checkCollide(x, y, s)) {
        println("milk");
        milk.remove(j);
        case2to3 = true;
      }
    }

    for (int u = 0; u < guy.size(); u++)
    {
      Guy g = guy.get(u);
      g.display();    
      if (g.checkCollide(x, y, s)) {
        println("guy!!");
        guy.remove(u);
        case2to3 = true;
      }
    }

    //moving-------
    if (keyPressed) {
      if (key == 'a' )
      {
        x-=5;
      }
      if (key == 'd')
      {
        x+=5;
      }
      if (key == 'w')
      {
        y-=5;
      }
      if (key == 's')
      {
        y+=5;
      }

      //bounding-----------
      if ( x < 0 ||  x > width)
      {
        x+=1;
      }

      if ( y < 0 ||y > height )
      {
        y+=1;
      }
    }
  }
}