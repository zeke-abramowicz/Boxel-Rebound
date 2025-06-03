/*

 What to work on:
 Create a LevelList class, and have the levels and blocks have a tostring that can be accessed in the LevelList to create the levels. They do not have to be static, but the string has to be accessible or be able to be added to so that we can use it.
 Also, finish fixing up this driver and turning it away from a class and into just code. Once you finish these things (should take 30 mins), try fixing up the move method but its ok if you can't.
 */

import java.util.ArrayList;
import java.util.Arrays;
LevelList levels = new LevelList();
int currentLevel;
Square josh;
int menuTime;
PImage Sun, Cloud;
int screen;

void setup() {
  background(120, 140, 250);
  size(500, 800);
  currentLevel = 0;
  Sun = loadImage("Sun.png");
  Cloud = loadImage("Cloud.png");
  screen = 0;
  levels.createLevel();
}


void forces() {
}

void draw() {
  if (screen==0) {
    background(255);
    textSize(50);
    text("Welcome to", 60, 95);
    text("Boxel Rebound!", 120, 140);

    textSize(20);
    fill(60);
    text("A game by Zeke n' Jake", 210, 170);
    text("Controls: blah blah blah placeholder", 100, 240);
    text("plaaaaaaaaaaaaaaceholderrrrrr", 100, 270);
    text("lalalalalalala placeholder", 100, 340);
    text("Press [ENTER] to start level", 130, 400);
    text("Level Select: ", 190, 460);
  }
  if (screen==1) {
    if (levels.editMode == true) {
      if (frameCount % 4 == 0) {
        levels.editMode();
      }
    } else if (levels.runMode == true) {
      levels.runLevel();
    }
    noStroke();
    fill(120, 140, 250);
    rect(47, 32, 75, 25);
    textSize(20);
    fill(60);
    int cent = (millis()-menuTime)/10;
    int c = cent%100;
    int s = (cent/100)%60;
    int m = cent/6000;

    if (s<=9) {
      text(m+":0"+s+":", 50, 50);
    } else {
      text(m+":"+s+":", 50, 50);
    }

    if (c<=9) {
      text("0"+c, 90, 50);
    } else {
      text(c, 90, 50);
    }

    image(Sun, 370, 50, 150, 150);
    image(Cloud, 200, 80, 150, 150);
    josh.move();
    if (levels.editMode == true && frameCount % 4 == 0) {
      levels.editMode();
    }

    josh.squareHere(levels.getLevel());
  }

  if (screen==2) {
    background(255);
    textSize(20);
    fill(60);
    text("Game over", 230, 170);
    text("Press [ENTER] to restart", 190, 400);
  }
}

void keyPressed() {
  if (key==CODED&&screen!=0) {
    if (keyCode==UP) {
      josh.jump();
    }
  }

  if (key == ENTER&&screen==0) {
    screen = 1;
    background(120, 140, 250);
    menuTime = millis();
    josh = new Square(30, new PVector(150, 400), 12);
  }

  if (key==ENTER && screen == 2) {
    setup();
  }
}

void setLevel() {
}

void reset() {
  setup();
}
