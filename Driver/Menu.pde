class Menu {
  //ControlP5 cp5;
  Menu(){
    //cp5 = new ControlP5();
    //cp5.addButton("myButton");
    if (screen == 1 || screen == 3){
      createMenu();
      isClicked();
    }
  }
  
  void isClicked() {
    if (mouseX >= 35 && mouseX <= 85 && mouseY >= 76 && mouseY <= 106){
      if (mousePressed){
        screen = 0;
      }
    }
  }
  
  void createMenu(){
    fill(180, 65, 180);
    noStroke();
    rect(35, 76, 50, 50);
    fill(250, 250, 250);
    rect(45.25, 85.75, 25, 4);
        fill(250, 250, 250);
    rect(45.25, 100.75, 25, 4);
        fill(250, 250, 250);
    rect(45.25, 115.75, 25, 4);
  }
    
  
  
}
