void player() {
  if (credits == false) {
    if (abs(mouseX - x) > 0.1) {
      x = x + (mouseX - x) * Peasing;
      if (play == true) {
        hunger = hunger - 0.001;
      }
    }
    if (abs(mouseY - y) > 0.1) {
      y = y + (mouseY- y) * Peasing;
      if (play == true) {
        hunger = hunger - 0.001;
      }
    }

    x = constrain(x, inner, width - inner);
    y = constrain(y, inner, height - inner);
    fill(76);
    rect(edge, edge, width-edge, height-edge);

    fill(255);
    ellipse(x, y, radius, radius);


    if (play == true || boss == true) {

      if (HP == 0) {
        play = false;
        go = true;
      }
      if (dt > 0) {
        dt = dt - 0.05;
      }
      if (dt < 0) {
        dt = 0;
      }
      if (score < 100) {
        hunger = hunger - 0.001;
      }
      if (score > 100 && score < 250) {
        hunger = hunger - 0.005;
      }
      if (score > 250) {
        hunger = hunger - 0.01;
      }
    }
    if (wt < 50) {
      fill(100, 0, 0);
      rect(width - edge - 10, edge + 100, width - edge, height - edge * 2);
    } else {
      fill(100, 0, 0);
      rect(width - edge * 2, edge + 100, width - edge, height - edge * 3);
    }
  }
  fear = constrain(fear, -100, 100);
}
