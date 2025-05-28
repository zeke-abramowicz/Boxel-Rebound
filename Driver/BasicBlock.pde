class BasicBlock extends Block {
  BasicBlock(float x, float y){
    super(x, y);
    createBlock();
  }
  
  void createBlock(){
    fill(128, 20, 128);
    rect(posX, posY, getSquareSize(), getSquareSize());
  }
  
  void deleteBlock(){
    fill(120, 140, 250);
    stroke(120, 140, 250);
    rect(posX, posY, getSquareSize(), getSquareSize());
  }
  
  String toString(){
    return "1" + " " + posX + " " + posY;
  }

  
}
