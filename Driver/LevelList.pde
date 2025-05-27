class LevelList {
  Level level1;
  Level level2;
  Level level3;
  Level[] levelList;
  int currentLevel;
  boolean editMode;
  Level test;
  
  LevelList(){
    levelList = new Level[3];
    levelList[0] = level1;
    levelList[1] = level2;
    levelList[2] = level3;
    currentLevel = 0;
    editMode = true;
    test = new Level();
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
  
  
}
