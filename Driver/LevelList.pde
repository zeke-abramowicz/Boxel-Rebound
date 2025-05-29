
import java.util.Arrays;

class LevelList {
  Level level1;
  Level level2;
  Level level3;
  Level[] levelList;
  int currentLevel;
  boolean editMode;
  boolean runMode;
  Level test;
  
  LevelList(){
    levelList = new Level[3];
    levelList[0] = level1;
    levelList[1] = level2;
    levelList[2] = level3;
    currentLevel = 0;
    editMode = false;
    test = new Level();
    runMode = true;
    level1 = new Level("1 60.0 630.0|1 60.0 630.0|1 60.0 630.0|1 60.0 630.0|1 90.0 630.0|1 90.0 630.0|1 120.0 630.0|1 150.0 630.0|1 180.0 660.0|1 240.0 660.0|1 240.0 660.0|1 270.0 660.0|1 300.0 660.0|1 300.0 660.0|1 330.0 660.0|1 360.0 660.0|1 360.0 630.0|1 390.0 630.0|1 390.0 630.0|1 390.0 630.0|1 360.0 630.0|1 360.0 630.0|1 330.0 630.0|1 300.0 630.0|1 300.0 630.0|1 270.0 630.0|1 270.0 630.0|1 270.0 630.0|1 240.0 630.0|1 240.0 630.0|1 240.0 630.0|1 210.0 630.0|1 210.0 630.0|1 210.0 630.0|1 210.0 630.0|1 210.0 630.0|1 180.0 630.0|1 180.0 630.0|1 180.0 630.0|1 180.0 630.0|1 180.0 630.0|1 180.0 630.0|1 180.0 630.0|1 180.0 630.0|1 180.0 630.0");
  }
  
  void editMode(){
    if (keyPressed && key == '5'){
      String str = test.toString();
      editMode = false;
      println(str);
    }
    else {
      test.move();
      test.addBlock();
    }
  }
  
  
  void reset(){
  }
  /*
  void runLevel() {
    if (levelList[currentLevel].getSize() > 0){
    if (frameCount % 2 == 0){
       levelList[currentLevel].moveLeft();


  }

    }
    */
    
  public Level getLevel(){
    return test;
  }
}
