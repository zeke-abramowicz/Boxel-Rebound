class BasicBlock extends Block {
  BasicBlock(float x, float y){
    super(x, y);
    fill(128, 20, 128);
    rect(posX, posY, getSquareSize(), getSquareSize());

  }
  
  void deleteBlock(){
    fill(120, 140, 250);
    rect(posX, posY, getSquareSize(), getSquareSize());
  }

  
}
