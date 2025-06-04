
class Spike extends Block {
  Spike(float x, float y){
    super(x, y);
  }
  
  void createBlock(){
        float squareSize2 = getSquareSize();
        noStroke();
        fill(250,250,250);
        triangle(posX - squareSize2 / 2, posY + squareSize2 / 2, posX + squareSize2 / 2, posY + squareSize2 / 2, posX, posY - squareSize2 / 2);
  }
  
  void deleteBlock(){
    float squareSize2 = getSquareSize();
    for (float i = posY; i < posY + getSquareSize(); i++){
      fill(120, 140 + (i / 15), 250 - (i / 15));
      noStroke();
      rect(0, i, getSquareSize(), 1);
    }
    noStroke();
    triangle(posX - squareSize2 / 2, posY + squareSize2 / 2, posX + squareSize2 / 2, posY + squareSize2 / 2, posX, posY - squareSize2 / 2);
  }
  
  String toString(){
    return "3" + " " + posX + " " + posY; 
  }
  
  String bClass(){
    return "Spike";
  }
}
