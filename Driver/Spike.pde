class Spike extends Block {
  Spike(float x, float y){
    super(x, y);
    fill(128, 20, 128);
    createBlock();
  }
  
  void createBlock(){
        float squareSize2 = getSquareSize();
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
  
  String bClass(){
    return "Spike";
  }
}
