import java.util.ArrayList;
class Level {
  ArrayList<Block> myLevel;
  
  Level(){
    myLevel = new ArrayList<Block>();
  }
  
  void addBlock(){
    if (keyPressed){
      if (key == '1'){
        myLevel.add(new BasicBlock((int)(mouseX / Block.squareSize) * Block.squareSize, (int)(mouseY / Block.squareSize) * Block.squareSize));
      }
      if (key == '2'){
        myLevel.add(new Spike((int)(mouseX / Block.squareSize) * Block.squareSize, (int)(mouseY / Block.squareSize) * Block.squareSize));
      }
      if (key == '3'){
        myLevel.add(new Finish((int)(mouseX / Block.squareSize) * Block.squareSize, (int)(mouseY / Block.squareSize) * Block.squareSize));
      }
      if (key == '4'){
        myLevel.get(myLevel.size() - 1).deleteBlock();
      }
    }

  }
  
  void moveRight(){
    for (int i = 0; i < myLevel.size(); i++){
      myLevel.get(i).posX += 10;
    }
  }
  
  void moveLeft(){
    for (int i = 0; i < myLevel.size(); i++){
      myLevel.get(i).posX -= 10;
    }
  }
  
  ArrayList<Block> getLevel(){
    return myLevel;
  }
  
  
}
