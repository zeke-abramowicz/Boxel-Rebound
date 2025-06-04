class Cloud extends Block{
  Cloud(float posX, float posY){
    super(posX, posY);
  }
  
  void createBlock(){
    fill(173, 216, 230);
    noStroke();
    rect(posX, posY, 20, 20);
    fill(173, 216, 230);
    noStroke();
    rect(posX + 15, posY + 5, 20, 20);
  }
  
  void deleteBlock(){
    for (float i = posY; i < posY + 25; i++){
      fill(120, 140 + (i / 15), 250 - (i / 15));
      noStroke();
      rect(posX, i, 35, 1);
    }
    noStroke();
    rect(posX, posY, 20, 20);
    rect(posX + 15, posY + 5, 15, 15);
    

    
  }
  
  
  String toString(){
    return "5" + " " + posX + " " + posY;
  }
  
  String bClass(){
    return "Cloud";
  }
  
  //add in a toString and few other things to make this class work with the rest of the game. Once that is done, work on debugging and fixing up any issues.
}
