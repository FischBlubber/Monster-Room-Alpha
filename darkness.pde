void darkness() {
  if (play == true && dark == true) {
    if (fear < 20) {
      image(darkness, x - 150, y - 150);
    } else {
      image(crazy, x - 150, y -150);
      if (fear > 50) {
        image(crazy, x - 150, y -150);
        if (fear > 80) {
          image(crazy, x - 150, y -150);
        }
      }
    }
    fill(0);
    rect(x - 5000, y - 5000, x + 5000, y - 130);

    fill(0);
    rect(x - 5000, y + 5000, x + 5000, y + 130);

    fill(0);
    rect(x - 2000, y - 500, x - 125, y + 500);

    fill(0);
    rect(x + 2000, y - 500, x + 124, y + 500);
  }
}
