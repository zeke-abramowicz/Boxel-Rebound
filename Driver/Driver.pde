/*
First work on creating a better background that looks more like the game. Then work on fixing a few bugs with the menu and stuff, but those things can also be worked on later throughout the week.
*/
import processing.sound.*;
import java.util.Arrays;
LevelList levels = new LevelList();
int currentLevel;
Square josh;
int menuTime;
PImage Sun, Cloud;
int screen;
boolean finished;
float speed;
SoundFile music, death;

void setup() {
  background(120, 140, 250);
  size(500, 800);
  currentLevel = 0;
  Sun = loadImage("Sun.png");
  Cloud = loadImage("Cloud.png");
  screen = 0;
  levels.createLevel();
  finished = false;
  speed = 5;
  //sound effects
  music = new SoundFile(this, "gamemusic.mp3");
  music.loop();
  death = new SoundFile(this, "wompwomp.mp3");
}


void forces() {
}

void draw() {
  Menu thisMenu;
  if (screen==0){
    background(180, 65, 180);
    textSize(50);
    text("Welcome to", 130, 95);
    text("Boxel Rebound!", 92.5, 140);
    
    textSize(20);
    fill(60);
    text("A game by Zeke n' Jake",230,170);
    //text("Controls: blah blah blah placeholder",100,240);
    //text("plaaaaaaaaaaaaaaceholderrrrrr",100,270);
    //text("lalalalalalala placeholder",100,340);
    if (mouseX >= 60 && mouseX <= 440 && mouseY >= 380 && mouseY <= 420) fill(0);
    else fill(60);
    rect(60, 380, 380, 40);
    fill(255);
    text("Play Game",210,407);
    if (mouseX >= 60 && mouseX <= 440 && mouseY >= 500 && mouseY <= 540) fill(0);
    else fill(60);
    rect(60, 500, 380, 40);
    fill(255);
    text("Edit Mode",210,526.5);
  }
  if(screen==1){
    thisMenu = new Menu();
    levels.runLevel(speed);
    noStroke();
    fill(120, 140, 250);
    rect(47, 32, 75, 25);
    textSize(20);
    fill(60);
    int cent = (millis()-menuTime)/10;
    int c = cent%100;
    int s = (cent/100)%60;
    int m = cent/6000;
    fill(0);
    noStroke();
    rect(86, 36, 90, 50);
    if (s<=9) {
      fill(250, 250, 250);
      text(m+":0"+s+":", 101, 68);
    } else {
      fill(250, 250, 250);
      text(m+":"+s+":", 100, 68);
    }
    
    if (c <= 9){
      fill(250,250,250);
      text("0" + c, 140, 68);
    }
    else {
      fill(250,250,250);
      text(c, 140, 68);
    }
    

    
    //}
    

  rect(josh.getLocation().x,josh.getLocation().y,josh.size,josh.size);
  josh.move();  
      josh.squareHere(levels.getLevel());
  thisMenu = new Menu();
  
  }
  
  if(screen==2){
    background(180, 65, 180);
    textSize(50);
    text("Level Finished", 106, 140);
    textSize(20);
    fill(60);
    if (mouseX >= 60 && mouseX <= 440 && mouseY >= 380 && mouseY <= 420) fill(0);
    else fill(60);
    rect(60, 380, 380, 40);
    fill(255);
    text("Play Next Level",186,407);
  }
  if (screen == 3){
    //edit mode screen
    thisMenu = new Menu();
    if (frameCount % 4 == 0){
       levels.editMode();
    }

    noStroke();
    fill(120, 140, 250);
    rect(47,32,75,25);
    textSize(20);
    fill(60);
    thisMenu = new Menu();
  }
  if (screen == 4){
    background(180, 65, 180);
    textSize(50);
    text("Game Paused!", 105, 140);
    
    textSize(20);
    fill(60);
    if (mouseX >= 60 && mouseX <= 440 && mouseY >= 380 && mouseY <= 420) fill(0);
    else fill(60);
    rect(60, 380, 380, 40);
    fill(255);
    text("Resume Game",198,407);
    if (mouseX >= 60 && mouseX <= 440 && mouseY >= 500 && mouseY <= 540) fill(0);
    else fill(60);
    rect(60, 500, 380, 40);
    fill(255);
    text("Edit Mode",210,526.5);

  }
  if (screen == 5){
    background(180, 65, 180);
    textSize(50);
    text("Edit Mode", 135, 140);
    
    textSize(20);
    fill(60);
    if (mouseX >= 60 && mouseX <= 440 && mouseY >= 380 && mouseY <= 420) fill(0);
    else fill(60);
    rect(60, 380, 380, 40);
    fill(255);
    text("Play Level",210,407);
    if (mouseX >= 60 && mouseX <= 440 && mouseY >= 500 && mouseY <= 540) fill(0);
    else fill(60);
    rect(60, 500, 380, 40);
    fill(255);
    text("Resume Editing",195,526.5);
  }
  if (screen == 6) {
    text("screen 6", 100, 150);
    thisMenu = new Menu();
    levels.runTest();    

    noStroke();
    fill(120, 140, 250);
    rect(47,32,75,25);
    textSize(20);
    fill(60);
        fill(0);
    noStroke();
    rect(86, 36, 90, 50);
    int cent = (millis()-menuTime)/10;
    int c = cent%100;
    int s = (cent/100)%60;
    int m = cent/6000;
    
    if (s<=9) {
      fill(250, 250, 250);
      text(m+":0"+s+":", 101, 68);
    } else {
      fill(250, 250, 250);
      text(m+":"+s+":", 100, 68);
    }
    
    if (c <= 9){
      fill(250,250,250);
      text("0" + c, 140, 68);
    }
    else {
      fill(250,250,250);
      text(c, 140, 68);
    }


  rect(josh.getLocation().x,josh.getLocation().y,josh.size,josh.size);

  josh.move(); 
    josh.squareHere(levels.test);
  thisMenu = new Menu();

  
  }
   if(screen==7){
    background(180, 65, 180);
    textSize(50);
    text("Level Failed", 135, 140);
    textSize(20);
    fill(60);
    if (mouseX >= 60 && mouseX <= 440 && mouseY >= 380 && mouseY <= 420) fill(0);
    else fill(60);
    rect(60, 380, 380, 40);
    fill(255);
    text("Play Again",205,407);
    
  }

}

void keyPressed() {
  if (key==CODED&&(screen!=0 && screen != 3 && screen != 2 && screen != 5)) {
    if (keyCode==UP) {
      josh.jump();
    }
  }
  }

void mouseClicked(){
   if((screen == 0 || screen == 4) && mouseX >= 60 && mouseX <= 440 && mouseY >= 380 && mouseY <= 420){
         Background();
    menuTime = millis();
    josh = new Square(30, new PVector(120,500),20);
        screen = 1;
    //levels.editMode = false;
    //levels.runMode = true;
  }
  if ((screen == 0 || screen == 4) && mouseX >= 60 && mouseX <= 440 && mouseY >= 500 && mouseY <= 540){
    screen = 3;
    Background();
    //menuTime = millis();
  }
  if (screen == 5 && mouseX >= 60 && mouseX <= 440 && mouseY >= 500 && mouseY <= 540){
    screen = 3;
    Background();
            levels.test.moveRight(levels.counter);
        levels.counter = 0;
    for (int i = 0; i < levels.test.getSize(); i++){
      levels.test.getLevel().get(i).createBlock();
    }
  }
  if (screen == 5 && mouseX >= 60 && mouseX <= 440 && mouseY >= 380 && mouseY <= 420){
    if (levels.test.getSize() > 0){
         Background();
        menuTime = millis();
        josh = new Square(30, new PVector(120,500),20);
        levels.test.moveRight(levels.counter);
        levels.counter = 0;
        screen = 6;


    }
  }
  if (screen == 2 && mouseX >= 60 && mouseX <= 440 && mouseY >= 380 && mouseY <= 420){
    
    levels.nextLevel();
    //finished = false;
    speed = 5;
    Background();
            menuTime = millis();
            
        //josh = new Square(30, new PVector(45,150),20);
        josh = new Square(30, new PVector(120,500),20);
                screen = 1;

  }
  if (screen == 7 && mouseX >= 60 && mouseX <= 440 && mouseY >= 380 && mouseY <= 420){
    levels.reset();
    speed = 5;

    Background();
    menuTime = millis();
    josh = new Square(30, new PVector(120,500),20);
        screen = 1;
  }
}

void setLevel() {
}

void reset() {
  setup();
}

void Background(){
    for (int i = 0; i < 800; i++){
      fill(120, 140 + (i / 15), 250 - (i / 15));
      noStroke();
      rect(0,i, width, 1);    
    }   
}
