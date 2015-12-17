class elemento
{
  float x,y; //posicion de dibujo
  float ancho, alto; //ancho y alto
  boolean value;
  
  elemento(float xi,float yi, float tamano)
  {
    x=xi;
    y=yi;
    ancho=tamano;
    alto=tamano;
  }
  void put()
  {
    fill(0,0,0);
    rect(x,y,ancho, alto);
    if(value) fill(255,0,0);
    else fill(40,0,0);
    ellipse(x+ancho/2,y+alto/2,ancho*0.9, alto*0.9);
  }
  boolean isOver()
  {
    if(mouseX>x && mouseX<x+ancho && mouseY>y && mouseY<y+alto) return true;
    else return false;
  }
  void toogle()
  {
    value = !value;
  }
  void clean()
  {
    value=false;
  }
  
  
}