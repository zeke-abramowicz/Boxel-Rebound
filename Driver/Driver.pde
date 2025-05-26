import java.util.ArrayList;

Level level1;
Level level2;
Level level3;
Level[] levelList = {level1, level2, level3};
Square josh;

void setup(){
  size(600,800);
  josh = new Square(20, new PVector(50,150),30);
}

void forces(){
}

void draw() {
  stroke(0,255,0);
  fill(0,255,0);
  background(0);
  rect(josh.getLocation().x,josh.getLocation().y,josh.getSize(),josh.getSize());
  josh.move();
}

void keyPressed(){
  if (key==CODED){
    if(keyCode==UP){
    josh.jump();
    }
  }
}

void setLevel() {
}
