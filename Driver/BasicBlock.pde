class BasicBlock extends Block {
  BasicBlock(float x, float y){
    super(x, y); //setup
  }
  //fix everything up w this class
  void createBlock(){
    noStroke();
    fill(250, 250, 250);
    //rect(posX, posY, getSquareSize(), getSquareSize());
    rect(posX-getSquareSize()/2, posY-getSquareSize()/2, getSquareSize(), getSquareSize());
  }
  
  void deleteBlock(){
    for (float i = posY; i < posY + getSquareSize(); i++){
      fill(120, 140 + (i / 15), 250 - (i / 15));
      noStroke();
      rect(0, i, getSquareSize(), 1);
    }
    noStroke();
    rect(posX-getSquareSize()/2, posY-getSquareSize()/2, getSquareSize(), getSquareSize());
  }
  
  String toString(){
    return "1" + " " + posX + " " + posY;
  }
  
  String bClass() {
    return "Basic";
  }
}
