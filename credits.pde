void credits() {
  if (credits == true) {
    background(0);
    cy = cy - 5;
    fill(255);
    textSize(125);
    text("Credits", cx, cy);

    fill(255);
    textSize(100);
    text("Game Design:", cx, cy + 100);

    fill(255);
    textSize(50);
    text("G Studios(Everything is Circle, so not muck work)", cx, cy + 300);

    fill(255);
    textSize(50);
    text("---", cx, cy + 400);

    fill(255);
    textSize(50);
    text("---", cx, cy + 500);

    fill(255);
    textSize(50);
    text("---", cx, cy + 600);

    fill(255);
    textSize(100);
    text("Game Ideas:", cx, cy + 750);

    fill(255);
    textSize(50);
    text("G Studios", cx, cy + 850);

    fill(255);
    textSize(50);
    text("Stanislav Nakhmanovych", cx, cy + 950);

    fill(255);
    textSize(50);
    text("---", cx, cy + 1050);

    fill(255);
    textSize(50);
    text("---", cx, cy + 1150);

    fill(255);
    textSize(100);
    text("Special Thanks:", cx, cy + 1350);

    fill(255);
    textSize(50);
    text("Stanislav Nakhmanovych", cx, cy + 1550);

    fill(255);
    textSize(100);
    text("But mostly...", cx, cy + 1650);

    fill(255);
    textSize(50);
    text("...Thank you for playing!", cx, cy + 1850);
    
    if (cy < - 2000) {
    credits = false;
    menu = true;
    wt = 0;
    bt = 0;
    wins = wins + 1;
    }
  }
}
