void win() {
  if (win == true) {
    wt = wt + 0.1;
    image(head1, hx0, hy0);
    image(tentacle, tx, ty);
    image(tentacle, tx0, ty0);
    fill(255, 0, 255);
    ellipse(m2x, m2y, radius, radius);
    fill(0);
    ellipse(m3x, m3y, br, br);
    fill(0, 255, 0);
    ellipse(m4x, m4y, radius, radius);
    fill(0, 0, 255);
    ellipse(m5x, m5y, radius, radius);
    fill(255, 255, 0);
    ellipse(m6x, m6y, radius, radius);

    if (hy0 > - 2000) {
      hy0 = hy0 - 10;
      ty = ty - 10;
      ty0 = ty0 - 10;
    }
    m2x = m2x - 4.5;
    m3x = m3x - 6;
    m4x = m4x - 3;
    m5x = m5x - 6.4;
    m6x = m6x - 2.4;

    if (wt > 5 && wt < 20) {
      fill(0, 255, 0);
      textSize(50);
      text("You just won!", 500, 50);
    }

    if (wt > 20 && wt < 40) {
      fill(0, 255, 0);
      textSize(50);
      text("Let's get out of here!", 500, 50);
    }
    if (wt > 50) {
    if (y > 300 && y < 500) {
    if (x > 1600) {
    win = false;
    credits = true;
    cx = 300;
    cy = 2000;
    }
    }
    //text(x + "   " + y, 500, 500);
    }
  }
}
