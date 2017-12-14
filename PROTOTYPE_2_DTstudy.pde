Food f;
Milker m;
Guy g;
Game game;
public ArrayList<Food> nibs;
public ArrayList<Milker> milk;
public ArrayList<Guy> guy;
int sec = second();
int state = 0;
float x = 1;
float y = 1;
float x_m;
int s = 200;

PImage food;
PImage lady;
PImage male;
PImage milker;
PImage controls;

boolean case2to3 = false;

void setup()
{
  fullScreen();

  lady= loadImage("lady.png");
  male = loadImage("male.png");
  food = loadImage("food.png");
  controls = loadImage ("CONTROLS.png");
}   
void draw()
{
  background(0);
  sec = second();
  switch (state) {
  case 0:
    menu();
    break;
  case 1:
    controls();
    break;
  case 2:
    game.showGame();

    break;
  case 3:
    youDied();
    break;
  }
}

void keyPressed() 
{
  switch (state) 
  {
  case 0:
    if (key == ' ') 
    {
      state = 1;
    }
    break;
  case 1:
    if (key == 'b') 
    {
      state = 2;
      game = new Game();
    } 
    break;
  case 2:
    if (case2to3) {
      state = 3;
      {
        state = 3;
      }
      break;
    }
  case 3:
    if (key == 'x') 
    {
      state = 0;
    }

  default:
    break;
  }
}