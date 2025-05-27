abstract class Block {
  public float posX;
  public float posY;
  public static final float squareSize = 30.0;
  void position(){
  }
  
  Block(float x, float y) {
    this.posX = x;
    this.posY = y;
  }
  
  float getSquareSize(){
    return squareSize;
  }
  
  void deleteBlock(){
    return;
  }
  
  void createBlock(){
    return;
  }
  
  String toString(){
    return "";
  }
  
}
