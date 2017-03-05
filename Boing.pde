class Boing{
  PVector pos, vel, acc;
  Boing(){
  pos = new PVector(width/2, height/2);
  vel = new PVector(0,0);
  acc = new PVector(random(0.1, 0.2), random(0.01, 0.1));
  
  }
  
  void update(){
    vel.add(acc);
    pos.add(vel);
    if((pos.y >= height-20) || (pos.y <= 0+20)){
      vel.y = vel.y*-1;
      acc.y = acc.y*-1;
    }
    if ((pos.x >= width-20) || (pos.x <= 0+20)){
      vel.x = vel.x*-1;
      acc.x = acc.x*-1;
    }
    vel.limit(10);

    
  }
  void show(){
    ellipse(pos.x,pos.y, 40, 40);
  }
}