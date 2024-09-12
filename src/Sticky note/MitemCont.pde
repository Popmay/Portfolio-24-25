
void keyTyped() {
  for (int i = 0; i < numBoxes; i++) {
    if (mouseX >= boxes[i].x && mouseX <= boxes[i].x + boxes[i].w &&
      mouseY >= boxes[i].y && mouseY <= boxes[i].y + boxes[i].h) {
      selectedBox = i;
      if (key == BACKSPACE) {
      boxes[selectedBox].name = boxes[selectedBox].name.substring(0, boxes[selectedBox].name.length() - 1);
    }else{
      boxes[selectedBox].name = boxes[selectedBox].name + str(key);
    }
      break;
    }
  }
}

void mousePressed() {
  for (int i = 0; i < numBoxes; i++) {
    if (mouseX >= boxes[i].x && mouseX <= boxes[i].x + boxes[i].w &&
      mouseY >= boxes[i].y && mouseY <= boxes[i].y + boxes[i].h) {
      selectedBox = i;
      break;
    }
  }
}

void mouseDragged() {
  if (selectedBox >= 0) {
    boxes[selectedBox].x = mouseX - boxes[selectedBox].w / 2;
    boxes[selectedBox].y = mouseY - boxes[selectedBox].h / 2;
  }
}

void mouseReleased() {
  selectedBox = -1;
}

void keyPressed() {
  if (keyCode == ENTER && numBoxes < boxes.length) {
    boxes[numBoxes] = new Mitem(10 + numBoxes * 60, 10, 50, 50, "new");
    numBoxes++;
  }
}
