class Spike extends Block {
  Spike(float x, float y){
    super(x, y);
    float squareSize2 = getSquareSize();
    fill(128, 20, 128);
    triangle(posX - squareSize2 / 2, posY + squareSize2 / 2, posX + squareSize2 / 2, posY + squareSize2 / 2, posX, posY - squareSize2 / 2);
  }
}
