void menu() {
  if (menu == true) {
    image(playbutton, pbx, pby);
  
    image(eb, ex, ey);
    if (er == false) {
    image(locked, ex, ey);
    }
   
    //image(trophähe, width - edge - 50, edge);
    
    //if (x > width - edge - 74 && y < height - edge - 74) {
    //menu = false;
    //achivements = true;
    //}

    if (x > pbx && x < pbx + 100) {
      if (y > pby && y < pby + 50) {
        play = true;
        menu = false;
        score = ss;
        Peasing = 0.05;
        Measing = 0.001;
        M2easing = 0.015;
        M3easing = 0.025;
        M4easing = 0.03;
        M6easing = 0.045;
        if (ss == 6000) {
          m2x = random(edge + 24, width - edge + 24);
          m2y = random(edge + 24, height - edge + 24);
          m3x = random(edge + 24, width - edge + 24);
          m3y = random(edge + 24, height - edge + 24);
          m4x = random(edge + 24, width - edge + 24);
          m4y = random(edge + 24, height - edge + 24);
          m5x = random(edge + 24, width - edge + 24);
          m5y = random(edge + 24, height - edge + 24);
          m6x = random(edge + 24, width - edge + 24);
          m6y = random(edge + 24, height - edge + 24);
          HP = 10;
          bt = 0;
          bHP = 5000;
          bHP0 = 5000;
          tx = 400;
          ty = -1920;
          tx0 = 1200;
          ty0 = -1920;
          hx = 650; //home x
          hy = 460; //home y
          rx = random(edge + 24, width - edge - 24); 
          ry = random(edge + 24, width - edge - 24);
          px = random(edge + 24, width - edge - 24); 
          py = random(edge + 24, width - edge - 24);
          tt = 1;
          zt = 0;
          zt0 = 0;
        } else {
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
          HP = 5;
        }
      }
    }

    if (time > 0) {
      fill(255, 255, 0);
      textSize(50);
      text("Locked", 300, 800);
    }

    if (er == true) {
      if (x > ex && x < ex + 100) {
        if (y > ey && y < ey + 50) {
          edit = true;
          menu = false;
        }
      }
    } else {
      if (x > ex && x < ex + 100) {
        if (y > ey && y < ey + 50) {
          time = 5;
        }
      }
    }
    fill(255, 0, 0);
    textSize(100);
    text("Monster", edge + 350, height - edge * 1.25);

    fill(0, 255, 0);
    textSize(100);
    text("Room", edge + 725, height - edge * 1.25);

    fill(0, 0, 255);
    textSize(50);
    text("Alpha", edge + 525, height - edge * 1.1);
  }
}
