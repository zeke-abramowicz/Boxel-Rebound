class BasicBlock extends Block {
  BasicBlock(float x, float y){
    super(x, y);
    fill(128, 20, 128);
    rect(posX, posY, getSquareSize(), getSquareSize());
  }
}
