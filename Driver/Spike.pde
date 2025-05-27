class Spike extends Block {
  Spike(float x, float y){
    super(x, y);
    createBlock();
  }
  
  void createBlock(){
        float squareSize2 = getSquareSize();
        //stroke(120, 140, 250);
        fill(128, 20, 128);
        triangle(posX - squareSize2 / 2, posY + squareSize2 / 2, posX + squareSize2 / 2, posY + squareSize2 / 2, posX, posY - squareSize2 / 2);
  }
  
  void deleteBlock(){
    float squareSize2 = getSquareSize();
    fill(120, 140, 250);
    stroke(120, 140, 250);
    triangle(posX - squareSize2 / 2, posY + squareSize2 / 2, posX + squareSize2 / 2, posY + squareSize2 / 2, posX, posY - squareSize2 / 2);
  }
  
  String toString(){
    return "3" + posX + " " + posY; 
  }
}
