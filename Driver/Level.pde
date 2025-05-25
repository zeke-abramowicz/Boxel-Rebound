import java.util.ArrayList;
class Level {
  private ArrayList<Block> myLevel;
  private int size;
  
  Level(){
    myLevel = new ArrayList<Block>();
    size = myLevel.size();
  }
  
  void addBlock(){
    if (keyPressed){
      if (key == '1'){
        myLevel.add(new BasicBlock((int)(mouseX / Block.squareSize) * Block.squareSize, (int)(mouseY / Block.squareSize) * Block.squareSize));
        size++;
      }
      if (key == '2'){
        myLevel.add(new Spike((int)(mouseX / Block.squareSize) * Block.squareSize, (int)(mouseY / Block.squareSize) * Block.squareSize));
        size++;
      }
      if (key == '3'){
        myLevel.add(new Finish((int)(mouseX / Block.squareSize) * Block.squareSize, (int)(mouseY / Block.squareSize) * Block.squareSize));
        size++;
      }
      if (key == '4'){
        if (size > 0){
          myLevel.get(size - 1).deleteBlock();
          myLevel.remove(size - 1);
          size--;
        }
      }
    }

  }
  void move(){
        if (keyPressed){
        if (keyCode == RIGHT){
          moveRight();
        }
        if (keyCode == LEFT){
          moveLeft();
        }
        
  }
  }
  void moveRight(){
    for (int i = 0; i < size; i++){
      myLevel.get(i).deleteBlock();
      myLevel.get(i).posX += 10;
      myLevel.get(i).createBlock();
    }
  }
  
  void moveLeft(){
    for (int i = 0; i < size; i++){
      myLevel.get(i).deleteBlock();
      myLevel.get(i).posX -= 10;
      myLevel.get(i).createBlock();
    }
  }
  
  ArrayList<Block> getLevel(){
    return myLevel;
  }
  
  int size(){
    return size;
  }
  
  
}
