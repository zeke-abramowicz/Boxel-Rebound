import java.util.ArrayList;
import java.util.Arrays;
class Level {
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
            background(120, 140, 250);
    for (int i = size - 1; i >= 0; i--){
      //myLevel.get(i).deleteBlock();
      myLevel.get(i).posX += Block.squareSize / 2;
      myLevel.get(i).createBlock();
    }
  }
  
  void moveLeft(){
            background(120, 140, 250);
    for (int i = 0; i < size; i++){
      //myLevel.get(i).deleteBlock();
      myLevel.get(i).posX -= Block.squareSize / 2;
      myLevel.get(i).createBlock();
    }
  }
  
    void moveLeft(int x){
            background(120, 140, 250);
    for (int i = 0; i < size; i++){
      //myLevel.get(i).deleteBlock();
      myLevel.get(i).posX -= x;
      myLevel.get(i).createBlock();
    }
  }
  
  ArrayList<Block> getLevel(){
    return myLevel;
  }
  
  int getSize(){
    return size;
  }
  
  String toString(){
    String str = "";
    for (int i = 0; i < size; i++){
      str += myLevel.get(i).toString();
      str += "|";
    }
    return str;
  }
  
  
  void createLevel(String str){
    String[] arr = split(str, '|');
    for (int i = 0; i < arr.length; i++){
      String newStr = arr[i];
      println(newStr.substring(0, 1));
      if (newStr.substring(0, 1).equals("1")){
        println(newStr);
        println(newStr.substring(2));
        String str2 = newStr.substring(2);
        String[] arr2 = split(str2, ' ');
        float x = float(arr2[0]);
        float y = float(arr2[1]);
        println(float(arr2[1]));
        BasicBlock block = new BasicBlock(x + Block.squareSize / 2, y + Block.squareSize / 2);
        myLevel.add(block);
        size++;
      }
      else if (newStr.substring(0, 1).equals("2")){
        String str2 = newStr.substring(2);
        String[] arr2 = split(str2, ' ');
        float x = float(arr2[0]);
        float y = float(arr2[1]);
        Finish block = new Finish(x, y);
        myLevel.add(block);
        size++;
      }
      else if (newStr.substring(0, 1).equals("3")){
        String str2 = newStr.substring(2);
        String[] arr2 = split(str2, ' ');
        float x = float(arr2[0]);
        float y = float(arr2[1]);
        Spike block = new Spike(x, y);
        myLevel.add(block);
        size++;
      }
      
    }
    println(this.toString());
  }
        
  
}
