class Telas{
  Pistas pista1, pista2, pista3, pista4, pista5, pista6, pista7, pista8, pista9, pista10, pista11, pista12, pista13;
  Telas(){
    pista1 = new Pistas(height-0, 50);
    pista2 = new Pistas(height-100, 50);
    pista3 = new Pistas(height-200, 50);
    pista4 = new Pistas(height-300, 50);
    pista5 = new Pistas(height-400, 50);
    pista6 = new Pistas(height-500, 50);
    pista7 = new Pistas(height, 50);
    pista8 = new Pistas(height-150, 50);
    pista9 = new Pistas(height-200, 50);
    pista10 = new Pistas(height-300, 50);
    pista11 = new Pistas(height-400, 50);
    pista12 = new Pistas(height-450, 50);
    pista13 = new Pistas(height-550, 50);
    
    pista1.init(-600);
    pista2.init(-600);
    pista4.init(-600);
    
    pista7.init(-1200);
    pista8.init(-1200);
    pista9.init(-1200);
    pista10.init(-1200);
    pista11.init(-1200);
    pista12.init(-1200);
    pista13.init(-1200);
  }
  
  void tela1(){
    pista3.desenha();
    pista5.desenha();
    pista6.desenha();
  }
  
  void tela2(){
    pista1.desenha();
    pista2.desenha();
    pista4.desenha();
  }
  
  void tela3(){
    pista7.desenha();
    pista8.desenha();
    pista9.desenha();
    pista10.desenha();
    pista11.desenha();
    pista12.desenha();
    pista13.desenha();
  }
  
  void atualizaTela1(){
        pista3.atualizaY(50);
        pista5.atualizaY(50);
        pista6.atualizaY(50);
  }
  
  void atualizaTela2(){
        pista1.atualizaY(50);
        pista2.atualizaY(50);
        pista4.atualizaY(50);
  }
  
  void atualizaTela3(){
        pista7.atualizaY(50);
        pista8.atualizaY(50);
        pista9.atualizaY(50);
        pista10.atualizaY(50);
        pista11.atualizaY(50);
        pista12.atualizaY(50);
        pista13.atualizaY(50);
  }
  void resetTela1(){
        pista3.resetY(1800);
        pista5.resetY(1800);
        pista6.resetY(1800);
  }
  void resetTela2(){
        pista1.resetY(1800);
        pista2.resetY(1800);
        pista4.resetY(1800);
  }
  void resetTela3(){
        pista7.resetY(1800);
        pista8.resetY(1800);
        pista9.resetY(1800);
        pista10.resetY(1800);
        pista11.resetY(1800);
        pista12.resetY(1800);
        pista13.resetY(1800);
  }
}
