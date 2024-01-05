void go() {
  if (go == true) {

    lose = lose - lose;
    fear = fear - fear;
    mx = 1000;
    my = 50;
    if (hunger < 100) {
      hunger = 100;
    }

    fill(255, 0, 0);
    textSize(50);
    text("You lose!", 500, 400);

    fill(255, 0, 0);
    textSize(50);
    text("Your score: " + round(score), 500, 450);

    image(retry, rtx, rty);
    image(home, hx, hy);

    if (y > rty && y < rty + 100) {
      if (x > rtx && x < rtx + 100) {
        go = false;
        play = true;
        score = ss;
        fear = 0;
        hunger = 100;
        mx = 1000;
        HP = 5;
        my = 50;
        m2x = 1000;
        m2y = 50;
        m3x = 1000;
        m3y = 50;
        m4x = 1000;
        m4y = 50;
        m5x = 1000;
        m5y = 50;
        m6x = 1000;
        m6y = 50;
      }
    }
    if (y > hy && y < hy + 100) {
      if (x > hx && x < hx + 100) {
        go = false;
        menu = true;
        score = score - score;
        lose = lose - lose;
        fear = fear - fear;
        mx = 1000;
        my = 50;
        if (hunger < 100) {
          hunger = 100;
        }
      }
    }
  }
}
