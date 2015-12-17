import g4p_controls.*;


elemento[][] matriz;
float initx, inity, tam;
void setup()
{
  initx=0.15*width;
  inity=60;
  tam=0.7*width/7;
  size(600, 600);
  background(0,0,100);
  Title();
  createGUI();
  matriz = new elemento[5][7];
  for(int row=0; row<5;row++)
  {
    for(int col=0; col<7;col++)
    {
        matriz[row][col] = new elemento(initx+col*tam,inity+row*tam,tam);
        matriz[row][col].put();
    }
  }
}
void draw()
{
  
  
  
}

public void Title()
{
  PFont font;
  font = createFont("BAUHS93.TTF", 32);
  textFont(font);
  text("Matrix Creator Kiwibot Basic Shield", 10, 50);
}


void mousePressed()
{
//comprueba el botón pulsado
int fila = 0;
String cadena ="{";
  for(int row=0; row<5;row++)
  {
    fila = 0;
    for(int col=0; col<7;col++)
    {
        fila = fila<<1;//desplazo los bits
        if(matriz[row][col].isOver()) {matriz[row][col].toogle(); matriz[row][col].put();}
        if(matriz[row][col].value) fila++;
        
    }
    cadena = cadena +fila+",";
  }
  cadena = cadena.substring(0,cadena.length()-1) +"}";
  textarea1.setText(cadena);
}

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:419878:
  for(int row=0; row<5;row++)
  {
    for(int col=0; col<7;col++)
    {
        matriz[row][col].clean();
        matriz[row][col].put();        
        
    }
  }
  textarea1.setText("{0,0,0,0,0}");  

} //_CODE_:button1:419878: