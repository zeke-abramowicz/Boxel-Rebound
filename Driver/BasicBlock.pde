class BasicBlock extends Block {
  BasicBlock(float x, float y){
    super(x, y); //setup
  }
  //fix everything up w this class
  void createBlock(){
    stroke(0);
    fill(250, 250, 250);
    //rect(posX, posY, getSquareSize(), getSquareSize());
    rect(posX-getSquareSize()/2, posY-getSquareSize()/2, getSquareSize(), getSquareSize());
  }
  
  void deleteBlock(){
    for (float i = posY; i < posY + getSquareSize(); i++){
      
    fill(120, 140 + (height / 15), 250 - (height / 15));
    noStroke();
    rect(0, i, width, 1);
    }
    stroke(120, 140, 250);
    rect(posX-getSquareSize()/2, posY-getSquareSize()/2, getSquareSize(), getSquareSize());
  }
  
  String toString(){
    return "1" + " " + posX + " " + posY;
  }
  
  String bClass() {
    return "Basic";
  }
}
