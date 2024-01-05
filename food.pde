void food() {
  if (play == true) {
 if (hunger > 100.5) {
      hunger = hunger - 0.5;
    }
    image(burger, bx, by);
    image(bananen, bananax, bananay);

    if (score > 1000) {
      image(psypack, ppx, ppy);
      if (x > ppx && x < ppx + 50) {
        if (y > ppy && y < ppy + 50) {

          ppx = random(400, 1520);
          ppy = random(400, 680);

          fear = fear - 50;
          hunger = hunger + 2;
        }
      }
    }

    if (x > bx && x < bx + 50) {
      if (y > by && y < by + 50) {
        hunger = hunger + 10;
        fear = fear - 10;
        bx = random(400, 1520);
        by = random(400, 680);
        //burgers = burgers + 1;
      }
    }

    if (x > bananax && x < bananax + 50) {
      if (y > bananay && y < bananay + 50) {
        hunger = hunger + 3;
        fear = fear - 20;
        bananax = random(400, 1520);
        bananay = random(400, 680);
        //bananas = bananas + 1;
      }
    }

    if (hunger < 90 && hunger > 80) {
      Peasing = 0.045;
    }

    if (hunger < 80 && hunger > 70) {
      Peasing = 0.04;
    }

    if (hunger < 70 && hunger > 50) {
      Peasing = 0.025;
    }

    if (hunger < 50 && hunger > 40) {
      Peasing = 0.02;
    }

    if (hunger < 40 && hunger > 20) {
      Peasing = 0.015;
    }

    if (hunger < 10 && hunger > 5) {
      Peasing = 0.01;
    }

    if (hunger < 5 && hunger > 0) {
      Peasing = 0.005;
    }

    if (hunger == 0) {
      lose = lose + 1;
    }

    hunger = hunger - 0.001;

    score = score + 0.1;
}
}
