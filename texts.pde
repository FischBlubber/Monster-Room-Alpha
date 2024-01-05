void texts() {
  if (play == true || boss == true) {
    fill(0, 255, 0);
    textSize(50);
    text("hunger: " + round(hunger) + "%", 500, 50);

    fill(255, 0, 0);
    textSize(50);
    text("Score:" + round(score), 50, 50);

    fill(0, 255, 0);
    textSize(50);
    text("HP:" + round(HP), 1000, 100);

    if (fear > 1) {
      fill(255, 0, 0);
      textSize(50);
      text("fear:" + round(fear) + "%", 1000, 50);
    }
    if (fear < 1) {
      fill(0, 255, 0);
      textSize(50);
      text("comfort:" + abs(round(fear)) + "%", 1000, 50);
    }

    if (fear > 99.9) {
      lose = lose + 1;
    }
    if (score < 20) {
      fill(255, 255, 0);
      textSize(60);
      text("the monster is slow right now... use your time whisley.", 250, 100);
    }

    if (score > 1250 && score < 1260) {
      fill(255, 255, 0);
      textSize(60);
      text("Keep going! You are great!", 250, 100);
    }

    if (score > 500 && score < 520) {
      fill(255, 0, 0);
      textSize(60);
      text("watch out, the second monster awake...", 350, 100);
    }

    if (score > 900 && score < 920) {
      fill(255, 0, 0);
      textSize(50);
      text("you don't wanna get in trouble with the third monster, do you?", 150, 100);
    }

    if (fear > 65 && fear < 90 && play == true) {
      fill(255, 0, 0);
      textSize(50);
      text("I see, you are scared", 150, 100);
    }
    if (score > 1600 && score < 1650) {
      fill(0, 255, 0);
      textSize(50);
      text("You are getting closer!", 150, 100);
    }

    if (fear < -100 && fear > -130) {
      fill(0, 255, 0);
      textSize(50);
      text("You dont seem scared...", 150, 100);
    }
    if (score > 1700 && score < 1720) {
      fill(255, 0, 0);
      textSize(50);
      text("You wait for the next monster to awake, dont you?", 150, 100);
    }
    if (score > 1490 && score < 1495) {
      fill(255, 0, 0);
      textSize(150);
      text("DonT meSs ARounD wiTh uS!", 0, 540);

      Measing = 0.3;
    }
    if (score > 1500 && score < 1515) {
      fill(255, 255, 0);
      textSize(45);
      text("it vanished...", 50, 200);
    }
    if (score > 1800 && score < 1900) {
      if (score < 1815) {
        fill(255, 0, 0);
        textSize(1000);
        text("DIE!", 150, 500);
        fear = fear + 0.3;
      }
      M2easing = 0.05;
      M3easing = 0.1;
      Peasing = 0.03;
    }
    if (score > 1950 && score < 1965) {
      fill(255, 0, 0);
      textSize(1000);
      text("ready to die?", 200, 500);
    }
    if (score > 1815) {
      fill(round(red), 0, 0);
      textSize(35);
      text("You feel scared", 1700, 50);
      red = red - 0.1;
    }
  }
  if (score > 1900 && score < 1945) {
    M2easing = 0.001;
    M3easing = 0.002;
    Peasing = 0.05;
    txtx = random(50, 51);
    txty = random(450, 451);
    txt2x = random(49, 50);
    txt2y = random(449, 450);
    fill(255);
    textSize(200);
    text("how did you do that...?", txtx, txty);

    fill(0);
    textSize(200);
    text("how did you do that...?", txt2x, txt2y);
  }
}
