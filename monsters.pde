void monsters() {
  if (play == true) {
    Measing = Measing + 0.0000005;
    if (score < 1500) {
      if (abs(x - mx) > 0.1) {
        mx = mx + (x - mx) * Measing;
      }
      if (abs(y - my) > 0.1) {
        my = my + (y- my) * Measing;
      }
      fill(255, 0, 0);
      ellipse(mx, my, radius, radius);

      if (abs(x - mx) < 25 && abs(y - my) < 25) {
        if (dt == 0) {
          HP = HP - 1;
          dt = 1;
        }
      }
    }
    if (lose == 1) {
      go = true;
      play = false;
    }

    if (mx < x + 1025 && mx > x - 125) {
      if (my < y + 125 && my > y - 125) {
        fear = fear + 0.05;
        //ht = true;
      }
    }

    if (score > 500) {
      fill(255, 0, 255);
      ellipse(m2x, m2y, radius, radius);

      if (abs(x - m2x) < 25 && abs(y - m2y) < 25) {
        if (dt == 0) {
          HP = HP - 1;
          dt = 1;
        }
      }
      if (abs(x - m2x) > 0.1) {
        m2x = m2x + (x - m2x) * M2easing;
      }
      if (abs(y - m2y) > 0.1) {
        m2y = m2y + (y- m2y) * M2easing;
      }
      if (m2x < x + 1025 && m2x > x - 125) {
        if (m2y < y + 125 && m2y > y - 125) {
          fear = fear + 0.1;
          //ao = true;
        }
      }
    }

    if (score > 1000) {
      fill(0);
      ellipse(m3x, m3y, radius, radius);

      if (abs(x - m3x) < 25 && abs(y - m3y) < 25) {
        if (dt == 0) {
          HP = HP - 1;
          dt = 1;
        }
      }
      if (abs(x - m3x) > 0.1) {
        m3x = m3x + (x - m3x) * M3easing;
      }
      if (abs(y - m3y) > 0.1) {
        m3y = m3y + (y- m3y) * M3easing;
      }
      if (m3x < x + 1025 && m3x > x - 125) {
        if (m3y < y + 125 && m3y > y - 125) {
          fear = fear + 0.15;
          //sr = true;
        }
      }
    }

    if (score > 2000) {
      fill(0, 255, 0);
      ellipse(m4x, m4y, radius, radius);

      if (abs(x - m4x) < 25 && abs(y - m4y) < 25) {
        if (dt == 0) {
          HP = HP - 1;
          dt = 1;
        }
      }
      if (abs(x - m4x) > 0.1) {
        m4x = m4x + (x - m4x) * M4easing;
      }
      if (abs(y - m4y) > 0.1) {
        m4y = m4y + (y- m4y) * M4easing;
      }
      if (m4x < x + 1025 && m4x > x - 125) {
        if (m4y < y + 125 && m4y > y - 125) {
          fear = fear + 0.2;
        }
      }
    }

    if (score > 3000) {
      fill(0, 0, 255);
      ellipse(m5x, m5y, radius, radius);

      if (abs(x - m5x) < 25 && abs(y - m5y) < 25) {
        if (dt == 0) {
          HP = HP - 1;
          dt = 1;
        }
      }

      if (m5x < x + 1025 && m5x > x - 125) {
        if (m5y < y + 125 && m5y > y - 125) {
          fear = fear + 0.25;
        } else {
          m5y = random(edge + 24, width - edge - 24);
        }
      } else {
        m5x = random(edge + 24, width - edge - 24);
      }
    }

    if (score > 4000) {
      fill(255, 255, 0);
      ellipse(m6x, m6y, radius, radius);

      if (abs(x - m6x) < 25 && abs(y - m6y) < 25) {
        if (dt == 0) {
          HP = HP - 1;
          dt = 1;
        }
      }

      if (m6x < x + 1025 && m6x > x - 125) {
        if (m6y < y + 125 && m6y > y - 125) {
          fear = fear + 0.3;
          //afgm = true;
        }
      }

      if (abs(x - m6x) > 0.1) {
        m6x = m6x + (x - m6x) * M6easing;
      }
      if (abs(y - m6y) > 0.1) {
        m6y = m6y + (y- m6y) * M6easing;
      }
    }
    if (score > 6000) {
      play = false;
      boss = true;
      HP = 10;
      bt = 0;
    }
  }
}
