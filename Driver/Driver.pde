/*

What to work on:
Create a LevelList class, and have the levels and blocks have a tostring that can be accessed in the LevelList to create the levels. They do not have to be static, but the string has to be accessible or be able to be added to so that we can use it.
Also, finish fixing up this driver and turning it away from a class and into just code. Once you finish these things (should take 30 mins), try fixing up the move method but its ok if you can't.
*/
  
import java.util.ArrayList;

LevelList levels = new LevelList();
int currentLevel;


void setup(){
  background(120, 140, 250);
  size(500,800);
  currentLevel = 0;
}

void forces(){
}

void draw() {
  if (levels.editMode == true && frameCount % 4 == 0){
    levels.editMode();
  }
}


void keyPressed(){
}

void setLevel() {
}
