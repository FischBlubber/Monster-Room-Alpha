void edit() {
  if (edit == true) {
    image(back, edge + 10, edge + 10);
    fill(255);
    textSize(35);
    text("Darkness", 250, 350);
    
        fill(255);
    textSize(35);
    text("Monster-Images", 250, 400);
    
    if (x > edge  && x < edge + 74) {
      if (y > edge && y < edge + 74) {
      menu = true;
      edit = false;
      }
    }
    
        fill(255);
    textSize(35);
    text(st, 550, 350);

    if (dark == false) {
      image(switch0, 385, 325);
    } else {
      image(switch1, 385, 325);
    }
    
        if (images == false) {
      image(switch0, 500, 375);
    } else {
      image(switch1, 500, 375);
    }
    
    if (st > 0) {
    st = st - 0.1;
    }else {
    st = 0;
    }

    if (x > 361 && x < 461) {
      if (y > 301 && y < 351) {
        if (st == 0) {
          st = 5;
          if (dark == true) {
            dark = false;
          } else {
            dark = true;
          }
        }
      }
    }
    
        if (x > 500 && x < 600) {
      if (y > 375 && y < 425) {
        if (st == 0) {
          st = 5;
          if (images == true) {
            images = false;
          } else {
            images = true;
          }
        }
      }
    }
  }
}
