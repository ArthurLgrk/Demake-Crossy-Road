//classes
class Bichos {
  int posX;
  int posY;
  int vel;
  int tam;
  PImage carro;

  Bichos(int X, int Y, int VelInit, int Tam) {

    posX = X;
    posY = Y;
    vel = VelInit;
    tam = Tam;
    carro = loadImage("carro.png");
  }

  void desenha() {

    fill(50, 50, 50);
    image(carro,posX,posY-10,70,70);
    //rect(posX, posY, tam, tam);
    posX += vel;
  }

  void atualizaY(int Y) {
    posY = Y+10;
  }

  void atualizaVel(int VelInput) {
    vel = VelInput;
  }

  void resetX() {
    if (posX < -50) {
      posX = 900;
    } 
  }
  boolean generalCollision(float xPers, float yPers, float wPers, float hPers) {
    // are the sides of one rectangle touching the other?

    if (posX + tam >= xPers &&    // r1 right edge past r2 left
      posX <= xPers + wPers &&    // r1 left edge past r2 right
      posY + tam >= yPers &&    // r1 top edge past r2 bottom
      posY <= yPers + hPers) {    // r1 bottom edge past r2 top
      return true;
    }
    return false;
  }
}


class Pers {

  int hPers, wPers, xPers, yPers;
  boolean colision;
  PImage galinha;

  Pers() {
    hPers = 30;
    wPers = 30;
    xPers = 300;
    yPers = 500;
    galinha = loadImage("Galinha.png");
  }

  void desenha() {
    fill(255);
    image(galinha,xPers,yPers-10,50,50);
    
  }

  void atualizaPosX(int inputX) {
    xPers += inputX;
  }

  void borderCheck() {
    if (yPers+hPers >= height) {
        gameOver();
    } else if (yPers < 0) {
      yPers = 0;
    }

    if (xPers+wPers >= width) {
      xPers=width-wPers;
    } else if (xPers <= 0) {
      xPers=0;
    }
  }

  void atualizaPosY(int inputY) {
    yPers += inputY;
    println(yPers);
  }

  void persMappingMovment() {
    yPers += 50;
  }
}

class Pistas {

  int posX = 0;
  int posY;
  int tam;
  int tBicho;
  boolean  obsCollGen;
  Bichos[] bichos;

  Pistas(int Y, int Tam) {
    tBicho=0;
    posY = Y;
    tam = Tam;
    bichos = new Bichos[3];
    bichos[0] = new Bichos(width, posY+10, 0, 30);
    bichos[1] = new Bichos(width+200, posY+10, 0, 30);
    bichos[2] = new Bichos(width+300, posY+10, 0, 30);
  }
  void desenha() {

    fill(0);
    rect(posX, posY, width, tam);

    for (int i=0; i<3; i++) {
      obsCollGen = bichos[i].generalCollision(pers.xPers, pers.yPers, pers.wPers, pers.hPers);
      bichos[i].desenha();
      bichos[i].resetX();
    }
    if (obsCollGen) {
    gameOver();
    }
  }


void atualizaY(int y) {
  posY += y;
  int[] vels = {-1, -3, -4};

  for (int i=0; i<3; i++) {

    bichos[i].atualizaY(posY);
    bichos[i].atualizaVel(vels[int(random(vels.length))]);
  }
}

void resetY(int y) {
  posY -= y;
}

void init(int inity) {
  posY += inity;
}
}
