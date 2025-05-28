import java.util.ArrayList;

LevelList levels = new LevelList();
int currentLevel;
Square josh;
Block john,jim,jack; //testing
int numero = 0; //testing
PImage Sun,Cloud;
int screen;

void setup(){
  size(600,700);
  Sun = loadImage("Sun.png");
  Cloud = loadImage("Cloud.png");
  screen = 0;
}

void forces(){
}

void draw() {
  if (screen==0){
    background(255);
    textSize(50);
    text("Welcome to", 80, 95);
    text("Boxel Rebound!", 180, 140);
    
    textSize(20);
    fill(60);
    text("A game by Zeke n' Jake",230,170);
    text("Controls: blah blah blah placeholder",100,240);
    text("plaaaaaaaaaaaaaaceholderrrrrr",100,270);
    text("lalalalalalala placeholder",100,340);
    text("Press [ENTER] to start level",190,400);
    text("Level Select: ",240,460);
  }
  if(screen==1){
  image(Sun, 370, 50, 150, 150);
  image(Cloud, 200, 80, 150, 150);
  rect(josh.getLocation().x,josh.getLocation().y,josh.size,josh.size);
  josh.move();
    if (levels.editMode == true && frameCount % 4 == 0){
    levels.editMode();
  }
  
  if (numero==0){
  josh.squareHere(john);
  john = new BasicBlock(60,300);
  }else if(numero == 1){
  josh.squareHere(jim);
  jim = new Spike(60,300);
  }else{
  josh.squareHere(jack);
  fill(255);
  jack = new Finish(60,300);
  }
  }
}

void keyPressed(){
  if (key==CODED&&screen!=0){
    if(keyCode==UP){
    josh.jump();
    }
  }
  
  if(key == ENTER&&screen==0){
    screen = 1;
    background(120, 140, 250);
    josh = new Square(30, new PVector(60,150),30);
    if (numero == 0){
  john = new BasicBlock(60,300);
  }else if(numero == 1){
  jim = new Spike(60,300);
  }else{
  jack = new Finish(60,300);
  }
  }
}

void setLevel() {
}
