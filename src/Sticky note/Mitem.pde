class Mitem {
  int x, y, w, h;
  String name;
  Mitem(int x, int y, int w, int h, String name) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.name = name;
  }

  void display() {
    fill(100,100,100);
    rect(x, y, w, h);
    fill(300,300,300);
    textSize(20);
    text(name, x, y+15); 
    
  }
}
