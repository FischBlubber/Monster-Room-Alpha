void boss() {
  if (boss == true) {
    fear = fear + 0.1;
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

    image(pflaster, px - 12, py - 12);

    if (a == false) {
      image(rocket, rx, ry);
    } else {
      image(rocket0, rx, ry);
    }

    if (abs(x - m2x) < 25 && abs(y - m2y) < 25) {
      if (dt == 0) {
        HP = HP - 1;
        dt = 1;
      }
    }
    if (lt > 0) {
      image(head0, hx0, hy0);
    } else {
      image(head, hx0, hy0);
    }
    image(tentacle, tx, ty);
    image(tentacle, tx0, ty0);

    bt = bt + 0.1;

    if (bt < 10) {
      fill(255, 0, 0);
      textSize(550);
      text("Stop!", 275, 650);
    }
    if (bt > 30 && bt < 40) {
      fill(255, 0, 0);
      textSize(200);
      text("I have enough!", 295, 650);
    }

    if (bt > 50 && bt < 80) {
      fill(255, 0, 0);
      textSize(150);
      text("I have eonough of you!", 275, 650);
    }
    if (bt > 10 && bt < 30 && hy0 < 0) {
      hy0 = hy0 + 2.5;
      ty = ty + 5.5;
      ty0 = ty0 + 5.5;
    }
    if (bt > 80) {
      if (a == true) {
        if (ry > -100) {
          ry = ry - 20;
        } else {
          a = false;
          rx = random(edge + 24, width - edge - 24);
          ry = random(edge + 24, width - edge - 24);
          bHP0 = bHP0 - 50;
          ft = 5;
        }
      }
      if (ft > 0) {
        ft = ft - 0.1;
        if (bHP0 < bHP) {
          bHP = bHP - 5;
        }
        fill(0);
        rect(50, 75, 1000, 30);
        fill(255, 0, 0);
        rect(50, 75, bHP / 5, 30);
      }
      //if (tt0 < 0) {
      //  tt0 = 0;
      //}
      //if (tt1 < 0) {
      //  tt1 = 0;
      //}
      //if (tt2 < 0) {
      //  tt2 = 0;
      //}
      //if (lt < 0) {
      //  lt = 0;
      //}
      if (bHP > 0) {

        at = at + 0.01;

        if (at > 10) {
          ac = random(0, 3.5);
          if (round(ac) == 0) {
            tt0 = 25;
          }
          if (round(ac) == 1) {
            tt1 = 15;
          }
          if (round(ac) == 2) {
            tt2 = 15;
          }
          if (round(ac) == 3) {
            lt = 15;
          }
          at = 0;
        }

        if (tt0 > 0) {
          tt0 = tt0 - 0.1;
          if (tt0 > 10) {
            if (ty < 0) {
              ty = ty + 10;
            }
          } else {
            if (ty > -820) {
              ty = ty - 10;
            }
          }
        }

        if (tt1 > 0) {
          tt1 = tt1 - 0.1;
          if (tt1 > 10) {
            if (ty0 < 0) {
              ty0 = ty0 + 10;
            }
          } else {
            if (ty0 > -820) {
              ty0 = ty0 - 10;
            }
          }
        }

        if (tt2 > 0) {
          tt2 = tt2 - 0.1;
          if (tt1 > 10) {
            if (ty < 0) {
              ty = ty + 10;
            }
            if (ty0 < 0) {
              ty0 = ty0 + 10;
            }
          } else {
            if (ty0 > -820) {
              ty0 = ty0 - 10;
            }
            if (ty > -820) {
              ty = ty - 10;
            }
          }
        }

        if (lt > 0) {
          lt = lt - 0.1;

          image(laser, hx0 + 75, hy0 + 50);

          if (x > hx0 - 24 && x < hx0 + 124) {
            if (dt == 0) {
              dt = 1;
              HP = HP - 1;
            }
          }
        }

        fill(0);
        textSize(50);
        text(at, 500, 500);

        bt0 = bt0 + 0.1;

        if (bt0 > 10 && bt0 < 40) {
          image(warning, wx - 100, wy - 100);
          if (bt0 < 20) {
            wx = x;
            wy = y;
          }
        }
        if (bt0 > 20 && bt0 < 35) {
          if (abs(wx - m3x) > 0.1) {
            m3x = m3x + (wx - m3x) * M3easing * 1.5;
          }
          if (abs(wy - m3y) > 0.1) {
            m3y = m3y + (wy- m3y) * M3easing * 1.5;
          }
          if (m3x > wx - 24 && m3x < wx + 24) {
            if (m3y > wy - 24 && m3y < wy + 24) {
              if (br < 100) {
                br = br + 15;
              }
            }
          }
        }
        if (bt0 > 35 && bt0 < 40) {
          br = 24;
        }
        if (bt0 > 40) {
          bt0 = 0;
        }

        if (abs(x - m3x) < br && abs(y - m3y) < br) {
          if (dt == 0) {
            HP = HP - 1;
            dt = 1;
          }
        }
      } else {
        boss = false;
        win = true;
      }

      zt0 = zt0 + 0.2;

      if (zt0 > 10 && zt0 < 15) {
        zx = x;
        zy = y;
      }
      if (zt0 > 10) {
        image(ziel, zx - 24, zy - 24);
      }
      if (zt0 > 20) {
        if (abs(zx - m4x) > 0.1) {
          m4x = m4x + (zx - m4x) * M6easing * 2;
        }
        if (abs(zy - m4y) > 0.1) {
          m4y = m4y + (zy- m4y) * M6easing * 2;
        }
        if (m4x > zx - 2 && m4x < zx + 2 && m4y > zy - 2 && m4y < zy + 2) {
          zt0 = 0;
        }
      }

      tt = tt - 0.1;

      if (tt < 0) {
        m5x = random(edge + 24, width - edge * 1.24);
        m5y = random(edge + 24, height - edge * 1.24);
        tt = 1;
      }

      if (abs(gzx - m6x) > 0.1) {
        m6x = m6x + (gzx - m6x) * M6easing;
      }
      if (abs(gzy - m6y) > 0.1) {
        m6y = m6y + (gzy- m6y) * M6easing;
      }
      if (zt == 0) {
        gzx = random( rx - 350, rx + 350);
        gzy = random( ry - 350, ry + 350);
        zt = 2.5;
      } else {
        if (zt > 0) {
          zt = zt - 0.1;
        } else {
          zt = 0;
        }
      }
      m6x = constrain(m6x, inner, width - inner);
      m6y = constrain(m6y, inner, height - inner);
      if (a == false) {
        rx = constrain(rx, inner, width - inner);
        ry = constrain(ry, inner, height - inner);
      }
      px = constrain(px, inner, width - inner);
      py = constrain(py, inner, height - inner);

      if (abs(x - m2x) > 0.1) {
        m2x = m2x + (x - m2x) * M2easing;
      }
      if (abs(y - m2y) > 0.1) {
        m2y = m2y + (y- m2y) * M2easing;
      }

      if (abs(x - m2x) < 25 && abs(y - m2y) < 25) {
        if (dt == 0) {
          HP = HP - 1;
          dt = 1;
        }
      }

      if (abs(x - m4x) < 25 && abs(y - m4y) < 25) {
        if (dt == 0) {
          HP = HP - 1;
          dt = 1;
        }
      }

      if (abs(x - m5x) < 25 && abs(y - m5y) < 25) {
        if (dt == 0) {
          HP = HP - 1;
          dt = 1;
        }
      }

      if (abs(x - m6x) < 25 && abs(y - m6y) < 25) {
        if (dt == 0) {
          HP = HP - 1;
          dt = 1;
        }
      }

      if (x > tx - 24 && x < tx + 124) {
        if (y < ty + 1920) {
          if (dt == 0) {
            dt = 1;
            HP = HP - 1;
          }
        }
      }

      if (x > tx - 24 && x < tx0 + 124) {
        if (y < ty0 + 1920) {
          if (dt == 0) {
            dt = 1;
            HP = HP - 1;
          }
        }
      }

      if (abs(x - px) < 25 && abs(y - py) < 25) {
        HP = HP + 1;
        px = random(edge + 24, width - edge - 24);
        py = random(edge + 24, width - edge - 24);
      }

      if (abs(x - rx) < 25 && abs(y - ry) < 25) {
        a = true;
      }

      if (dark == true) {
        image(darkness0, x - 210, y - 210);
        fill(0);
        rect(0, 0, x - 210, 1080);
        rect(0, 1080, 1920, y + 210);
        rect(1920, 0, x + 210, 1080);
        rect(0, 0, 1920, y - 210);
      }
      //text(ty, 200, 200);
    }
    if (HP < 1) {
      boss = false;
      menu = true;
    }
  }
}
