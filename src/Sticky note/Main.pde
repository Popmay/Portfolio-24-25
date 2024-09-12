//a sticky notes app with simple ui for a alternitve to a to do app

Mitem[] boxes;
int numBoxes = 0;
int selectedBox = -1;

void setup() {
  size(640, 360);
  fill(255, 204);
  noStroke();
  boxes = new Mitem[100]; // Adjust the maximum number of boxes as needed
  numBoxes = 4; // Initial number of boxes
  for (int i = 0; i < numBoxes; i++) {
    boxes[i] = new Mitem(10 + i * 60, 10, 50, 50);
  }
}

void draw() {
  background(0);

  for (int i = 0; i < numBoxes; i++) {
    boxes[i].display();
  }
}
