int tempoAtualizaTela, startgame, pont, maxPont;
PFont atari;
Pers pers;

Telas telas;

void setup() {
  size(800, 600);
  frameRate(60);
  background(200, 200, 200);
  pers = new Pers();
  tempoAtualizaTela = 0;
  startgame=0;

  atari = createFont("atari", 50);
  textFont(atari);
  telas = new Telas();
}

void draw() {
  background(#3AB81F);

  telas.tela1();
  telas.tela2();
  telas.tela3();
  
  fill(255);
  text(pont, 50, 50);

  switch(startgame) {
  case 0:
    break;
  case 1:
    MEF();
    break;
  }

  pers.desenha();
  pers.borderCheck();

  if (telas.pista6.posY - 100 > height) {
    telas.resetTela1();
  }
  if (telas.pista4.posY - 300 > height) {
    telas.resetTela2();
  }
  if (telas.pista13.posY - 50 > height) {
    telas.resetTela3();
  }
}

void keyReleased() {
  if (keyCode == RIGHT) {
    pers.atualizaPosX(50);
  }
  if (keyCode == LEFT) {
    pers.atualizaPosX(-50);
  }
  if (keyCode == UP) {
    pers.atualizaPosY(-50);
    pont++;
    maxPont = max(pont, maxPont);
  }
  if (keyCode == DOWN) {
    pers.atualizaPosY(+50);
    pont--;
    if (pont <=0)
      pont = 0;
  }
  startgame=1;
}

void MEF() {
  tempoAtualizaTela++;
  if (tempoAtualizaTela >= 120) {
    tempoAtualizaTela = 0;

    telas.atualizaTela1();
    telas.atualizaTela2();
    telas.atualizaTela3();

    pers.persMappingMovment();
  }
}

void gameOver() {
  fill(#BD3410);
  rect(0, 260, 800, 50);
  fill(255);
  text("Top: ", 15, 100);
  text(maxPont, 110, 100);
  text("Game over", 300, 300);
  stop();

}
