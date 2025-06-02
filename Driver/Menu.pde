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
        if (screen == 3 || screen == 4) screen = 5;
        else screen = 4;
      }
    }
  }
  
  void createMenu(){
    if (mouseX >= 35 && mouseX <= 85 && mouseY >= 76 && mouseY <= 106) fill(0);
    else fill(180, 65, 180);
    noStroke();
    rect(36, 76, 50, 50);
    fill(250, 250, 250);
    rect(48.5, 89, 25, 4, 70);
        fill(250, 250, 250);
    rect(48.5, 99, 25, 4, 70);
        fill(250, 250, 250);
    rect(48.5, 109, 25, 4, 70);
  }
    
  
  
}
