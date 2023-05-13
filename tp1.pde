PImage llave1;
PImage llave2;
PImage llave3;
int tamanoX = 640;
int tamanoY = 480;
int posX = 30;
int posY = 440;
int tamanoBotonX = 80;
int tamanoBotonY = 30;

int tiempoInicio = 0;
int duracionImagen = 6500;
int imagenActual = 1;
float textoPosY;

void setup() {
  size(640,480);
  background(255);
  textSize(16);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  tint(255, 100);
  llave1 = loadImage("fran.jpg");
  llave2 = loadImage("unnamed.jpg");
  llave3 = loadImage("images.jpg");
  textoPosY = height + 20;
}

void draw() {
  if ( millis() - tiempoInicio >= duracionImagen ) {
    imagenActual++;
    if ( imagenActual > 3 ) {
      imagenActual = 1;
    }
    tiempoInicio = millis();
    textoPosY = height + 20;
  }
  if ( imagenActual == 1 ) {
    image(llave1, 0, 0, width, height);
    fill(0);
    textoPosY = lerp(textoPosY, height/2, 0.1);
    float rectWidth = textWidth("LLave Francesa\n Es una llave conformada por una pieza metálica\n fija y otra movil que puede ajustarse a través de un hilo\n es una de las herramientas manuales mas comunes en los desajustes de tornillo") + 20;
    float rectHeight = textAscent() + textDescent() + 20;
   fill(0, 150);
    rect(width/2, height/2, width - 100, 200);
    fill(255);
    text("LLave Francesa\n Es una llave conformada por una pieza metálica\n fija y otra movil que puede ajustarse a través de un hilo\n es una de las herramientas manuales mas comunes en los desajustes de tornillo" , width/2, textoPosY);
  } else if ( imagenActual == 2 ) {
    image(llave2, 0, 0, width, height);
    fill(0);
    textoPosY = lerp(textoPosY, height/2, 0.1);
    float rectWidth = textWidth("La llave francesa funciona como una herramienta manual de ajuste y desajuste\n de piezas, en este caso de aquellas que se encuentran\n unidas a traves  de tuercas o tornillos.") + 20;
    float rectHeight = textAscent() + textDescent() + 20;
    fill(0, 150);
    rect(width/2, height/2, width - 100, 200);
    fill(255);
    text("La llave francesa funciona como una herramienta manual de ajuste y desajuste\n de piezas, en este caso de aquellas que se encuentran\n unidas a traves  de tuercas o tornillos.", width/2, textoPosY);
  }  else if ( imagenActual == 3 ) {
    image(llave3, 0, 0, width, height);
    fill(0, 150);
    rect(width/2, height/2, width - 100, 200);
    fill(255);
    textoPosY = lerp(textoPosY, height/2, 0.1);
    text("Su nombre se le atribuye al ingeniero francés Le Roy-Tribeau\n que recibió una patente\n para el diseño en 1837.\n en los paises de habla alemana\n la llave es también conocida como Franzose, en polonia\n como llave Francesa.", width/2, textoPosY);
}
  rect(posX + tamanoBotonX/2, posY + tamanoBotonY/2, tamanoBotonX, tamanoBotonY);
  fill(0);
  text("Reiniciar", posX + tamanoBotonX/2, posY + tamanoBotonY/2);
  if (mousePressed && mouseX > posX && mouseX < posX + tamanoBotonX && mouseY > posY && mouseY < posY + tamanoBotonY) {
    reiniciar();
  }
}

void reiniciar() {
  imagenActual = 1;
  tiempoInicio = millis();
  textoPosY = height + 20;
}
