import java.util.ArrayList;
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
        myLevel.add(new BasicBlock((int)(mouseX / Block.squareSize) * Block.squareSize, (int)(mouseY / Block.squareSize) * Block.squareSize));
        size++;
      }
      if (key == '2'){
        myLevel.add(new Spike((int)(mouseX / Block.squareSize) * Block.squareSize + Block.squareSize / 2, (int)(mouseY / Block.squareSize) * Block.squareSize + Block.squareSize / 2));
        size++;
      }
      if (key == '3'){
        myLevel.add(new Finish((int)(mouseX / Block.squareSize) * Block.squareSize + Block.squareSize / 2
        , 
        (int)(mouseY / Block.squareSize) * Block.squareSize 
        + Block.squareSize / 2
        ));
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
            background(120, 140, 250);
    for (int i = size - 1; i >= 0; i--){
      //myLevel.get(i).deleteBlock();
      myLevel.get(i).posX += 10;
      myLevel.get(i).createBlock();
    }
  }
  
  void moveLeft(){
            background(120, 140, 250);
    for (int i = 0; i < size; i++){
      //myLevel.get(i).deleteBlock();
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
  
  String toString(){
    String str = "";
    for (int i = 0; i < size; i++){
      str += myLevel.get(i).toString();
      str += "|";
    }
    return str;
  }
  
  void createLevel(String str){
    String[] arr = str.split("|");
    for (int i = 0; i < arr.length; i++){
      String newStr = arr[i];
      if (newStr.substring(0, 1).equals("1")){
        String str2 = newStr.substring(1);
        String[] arr2 = str2.split(" ");
        myLevel.add(new BasicBlock(float(arr2[0]), float(arr2[1])));
      }
      if (newStr.substring(0, 1).equals("2")){
        String str2 = newStr.substring(1);
        String[] arr2 = str2.split(" ");
        myLevel.add(new Finish(float(arr2[0]), float(arr2[1])));
      }
      if (newStr.substring(0, 1).equals("3")){
        String str2 = newStr.substring(1);
        String[] arr2 = str2.split(" ");
        myLevel.add(new Spike(float(arr2[0]), float(arr2[1])));
      }
    }
  }

        
  
}
