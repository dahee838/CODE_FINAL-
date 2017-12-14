void menu()
{
  background(0, 200, 120);
  textSize(42);
  textAlign(CENTER);
  text("Welcome to the farm.", width/2, height/4);
  textSize(24);
  text("Press the spacebar to start", width/2, height/2);
}

void controls()
{  
  background(0, 200, 120);
  textAlign(CENTER);
  textSize(24);
  text("Press b to begin.", width/2, height/2);
  image(controls,500,400);
}
void youDied()
{
  background(10);
  textSize(72);
  textAlign(CENTER);
  text("fin", width/2, height/2);
  textSize(24);
  text("press x to restart", width/2, height- 150);
}
