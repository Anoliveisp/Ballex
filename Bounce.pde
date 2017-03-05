Boing b = new Boing();
void setup(){
  size(800, 600);
  b = new Boing();
}

void draw(){
  background(0);
  b.update();
  b.show();
}
void mousePressed(){
  b.pos.x = mouseX;
  b.pos.y = mouseY;
  b.vel.x = 0;
  b.vel.y = 0;
  b.acc.x = random(0, 0.05);
  b.acc.y = random(0, 0.05);
  draw();
}