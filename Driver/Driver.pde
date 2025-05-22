import java.util.ArrayList;

Level level1;
Level level2;
Level level3;
Level[] levelList = {level1, level2, level3};
boolean editMode;
int currentLevel;

void setup(){
  background(120, 140, 250);
  size(500,800);
  Spike x = new Spike(100.0, 700.0);
  Finish y = new Finish(200.0, 700.0);
  BasicBlock z = new BasicBlock(400.0, 700.0);
  editMode = false;
  currentLevel = 0;
}

void forces(){
}

void draw() {
  if (editMode == true){
    if (keyPressed){
       if (frameCount % 10 == 0){
        if (keyCode == RIGHT){
          
      }
    }
  }
}

void keyPressed(){
}

void setLevel() {
}
