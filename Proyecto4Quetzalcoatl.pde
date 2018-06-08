import gab.opencv.*;
import processing.video.*;
import java.awt.*;
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage titulo1;
PImage titulo2;
PImage titulo3;
PImage titulo4;
PImage titulo5;
PImage titulo6;
PImage fondo1;
PImage fondo2;
int screen;

Capture video;
OpenCV opencv;




void setup()
{
  size(900, 700, P3D);

  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
  imagen1 = loadImage("busto1.png");
  imagen2 = loadImage("mural2.png");
  imagen3 = loadImage("vasija3.png");
  imagen4 = loadImage("vasija4.png");
  titulo1= loadImage("titulo1.png");
  titulo2= loadImage("titulo2.png");
  titulo3= loadImage("titulo3.png");
  titulo4= loadImage("titulo4.png");
  titulo5= loadImage("titulo5.png");
  titulo6= loadImage("titulo6.png");
  video.start();
}

void draw()
{

  switch(screen) {
  case 0:
    intro();
    break;
  case 1:
    elegir();
    break;
  case 2:
    busto();
    break;
  case 3:
    mural();
    break;
  case 4:
    vasija();
    break;
  case 5:
    vasijaa();
    break;
  }
}



void captureEvent(Capture c) {
  c.read();
}


void intro() {
  background(255);
  noStroke();
  fondo1 = loadImage("fondo1.jpg");
  image(fondo1, 0,0);
  fill(0);


  titulo1 = loadImage("titulo1.png");
  image(titulo1, 250, 220);

  pushMatrix();
  textSize(42);
  text("Presiona Q para continuar", 200, 500);
  popMatrix();

  keyPressed();
  if (key == 'q') {
    screen = 1;
  }
}


void elegir() {

  background(255);
  noStroke();
  fondo2 = loadImage("fondo2.jpg");
  image(fondo2, 0,0);
  fill(0);


  pushMatrix();
  titulo2 = loadImage("titulo2.png");
  image(titulo2, 10, 10);
  popMatrix();

  pushMatrix();
  titulo3 = loadImage("titulo3.png");
  image(titulo3, 500, 50);
  popMatrix();

  pushMatrix();
  titulo4 = loadImage("titulo4.png");
  image(titulo4, 50, 150);
  popMatrix();

  pushMatrix();
  titulo5 = loadImage("titulo5.png");
  image(titulo5, 500, 300);
  popMatrix();

  pushMatrix();
  titulo6 = loadImage("titulo6.png");
  image(titulo6, 50, 400);
  popMatrix();

  keyPressed();
  if (key == 'a') {
    screen = 2;
  }

  if (key == 's') {
    screen = 3;
  }

  if (key == 'd') {
    screen = 4;
  }

  if (key == 'f') {
    screen = 5;
  }
}


void busto() {
  background(0);
  scale(3);
  opencv.loadImage(video);

  image(video, 0, 0 );

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    image(imagen1, faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }

  pushMatrix();
  textSize(15);
  fill(random(0, 255));
  text("Presiona P para elegir de nuevo", 70, 270);
  popMatrix();

  keyPressed();
  if (key == 'p') {
    screen = 1;
  }
}


void mural() {
  background(0);
  scale(3);
  opencv.loadImage(video);

  image(video, 0, 0 );

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    image(imagen2, faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }

  pushMatrix();
  textSize(15);
  fill(random(0, 255));
  text("Presiona P para elegir de nuevo", 70, 270);
  popMatrix();

  keyPressed();
  if (key == 'p') {
    screen = 1;
  }
}


void vasija() {
  background(0);
  scale(3);
  opencv.loadImage(video);

  image(video, 0, 0 );

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    image(imagen3, faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }

  pushMatrix();
  textSize(15);
  fill(random(0, 255));
  text("Presiona P para elegir de nuevo", 70, 270);
  popMatrix();

  keyPressed();
  if (key == 'p') {
    screen = 1;
  }
}


void vasijaa() {
  background(0);
  scale(3);
  opencv.loadImage(video);

  image(video, 0, 0 );

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    image(imagen4, faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }

  pushMatrix();
  textSize(15);
  fill(random(0, 255));
  text("Presiona P para elegir de nuevo", 70, 270);
  popMatrix();

  keyPressed();
  if (key == 'p') {
    screen = 1;
  }
}