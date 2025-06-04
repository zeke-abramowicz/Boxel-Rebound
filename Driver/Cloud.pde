class Cloud extends Block{
  float posX;
  float posY;
  Cloud(){
    super(posX, posY);
    createBlock();
  }
  
  void createBlock(){
    rect(posX, posY, 20, 20);
    rect(posX + 15, posY + 5, 15, 15);
  }
  
  void move(){
        Background();
      //myLevel.get(i).deleteBlock();
      this.posX -= 4;
      this.createCloud();

  }
  
  //add in a toString and few other things to make this class work with the rest of the game. Once that is done, work on debugging and fixing up any issues.
}
