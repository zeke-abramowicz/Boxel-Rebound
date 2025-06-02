import java.util.ArrayList;
import java.util.Arrays;
class Level { //test
  private ArrayList<Block> myLevel;
  private int size;
  
  Level(){
    myLevel = new ArrayList<Block>();
    size = myLevel.size();
  }
  
  Level(String str){
    myLevel = new ArrayList<Block>();
    size = myLevel.size();
    createLevel(str);
  }
  
  void addBlock(){
    if (keyPressed){
      if (key == '1'){
        myLevel.add(new BasicBlock((int)(mouseX / Block.squareSize) * Block.squareSize+ Block.squareSize / 2, (int)(mouseY / Block.squareSize) * Block.squareSize+ Block.squareSize / 2));
        size++;
        myLevel.get(size - 1).createBlock();
      }
      if (key == '2'){
        myLevel.add(new Spike((int)(mouseX / Block.squareSize) * Block.squareSize + Block.squareSize / 2, (int)(mouseY / Block.squareSize) * Block.squareSize + Block.squareSize / 2));
        size++;
        myLevel.get(size - 1).createBlock();
      }
      if (key == '3'){
        myLevel.add(new Finish((int)(mouseX / Block.squareSize) * Block.squareSize + Block.squareSize / 2, (int)(mouseY / Block.squareSize) * Block.squareSize + Block.squareSize / 2));
        size++;
        myLevel.get(size - 1).createBlock();
      }
      if (key == '4'){
        if (size > 0){
          myLevel.get(size - 1).deleteBlock();
          myLevel.remove(size - 1);
          size--;
        }
      }
    }
