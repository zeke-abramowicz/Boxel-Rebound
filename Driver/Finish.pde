class Finish extends Block{
  Finish(float x, float y){
    super(x, y);
    createBlock();
}

  void createBlock(){
        float squareSize2 = getSquareSize();
    for (float row = posX - squareSize2 / 2; row < posX + squareSize2 / 2; row += squareSize2 / 10){
      for (float col = posY - squareSize2 / 2; col < posY + squareSize2 / 2; col += squareSize2/ 10){
        if((col + row) / (squareSize2 / 10)  % 2 == 1){
          fill(0,0,0);
          stroke(0);
          rect(row, col, squareSize2 / 10, squareSize2 / 10);
        }
        else {
          fill(250, 250, 250);
          stroke(0);
          rect(row, col, squareSize2 / 10, squareSize2 / 10);
        }
      }
    }
  }
  
    void deleteBlock(){
    
  }
}
