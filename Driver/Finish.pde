class Finish extends Block{
  Finish(float x, float y){
    super(x, y);
    float squareSize2 = getSquareSize();
    for (float row = posX - squareSize2 / 2; row < posX + squareSize2 / 2; row += squareSize2 / 10){
      for (float col = posY - squareSize2 / 2; col < posY + squareSize2 / 2; col += squareSize2/ 10){
        if(col + row % 2 == 0){
          fill(0);
          rect(row, col, squareSize2 / 20, squareSize2 / 20);
        }
        else {
          fill(250, 250, 250);
          rect(row, col, squareSize2 / 20, squareSize2 / 20);
        }
      }
    }
}
}
