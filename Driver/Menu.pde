class Menu {
  //ControlP5 cp5; //test
  Menu(){
    //cp5 = new ControlP5();
    //cp5.addButton("myButton");
    if (screen == 1 || screen == 3 || screen == 6){
      createMenu();
      isClicked();
    }
  }
  
  void isClicked() {
    if (mouseX >= 35 && mouseX <= 85 && mouseY >= 36 && mouseY <= 86){
      if (mousePressed){
        if (screen == 3 || screen == 6){
          screen = 5;
        }
        else screen = 4;
      }
    }
  }
  
  void createMenu(){
    if (mouseX >= 35 && mouseX <= 85 && mouseY >= 36 && mouseY <= 86) fill(0);
    else fill(0, 76, 182);
    noStroke();
    rect(36, 36, 50, 50);
    fill(250, 250, 250);
    rect(49, 49, 25, 4, 70);
        fill(250, 250, 250);
    rect(49, 59, 25, 4, 70);
        fill(250, 250, 250);
    rect(49, 69, 25, 4, 70);
  }
  
  
  
}
