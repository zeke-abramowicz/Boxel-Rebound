class BasicBlock extends Block {
  BasicBlock(float x, float y){
    super(x, y);
        fill(12);
    rect(posX, posY, getSquareSize(), getSquareSize());
  }
}
