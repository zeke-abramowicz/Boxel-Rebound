import java.util.ArrayList;

Level level1 = new Level();
Level level2 = new Level();
Level level3 = new Level();
Level[] levelList = {level1, level2, level3};
boolean editMode;
int currentLevel;

void setup(){
  background(120, 140, 250);
  size(500,800);
  Spike x = new Spike(100.0, 700.0);
  Finish y = new Finish(200.0, 700.0);
  BasicBlock z = new BasicBlock(400.0, 700.0);
  editMode = true;
  currentLevel = 0;
}

void forces(){
}

void draw() {
  if (editMode == true && frameCount % 5 == 0){
    if (keyPressed){
        if (keyCode == RIGHT){
          levelList[currentLevel].moveRight();
        }
        if (keyCode == LEFT){
          levelList[currentLevel].moveLeft();
        }
        
  }
  levelList[currentLevel].addBlock();
}
}


void keyPressed(){
}

void setLevel() {
}
