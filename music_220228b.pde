import processing.sound.*;

SoundFile sound;
Amplitude rms;



PGraphics pg1, pg2, pg3, canvas;
float wave, wave1;
PImage img;
PFont f;
void setup() {
  //colorMode(HSB);
  size(900, 900, P3D);

  //sound
  sound = new SoundFile(this, "a.mp3");
  sound.loop();

  rms = new Amplitude(this);
  rms.input(sound);



  //pg
  pg1 = createGraphics(900, 900, P3D);
  pg2 = createGraphics(900, 900, P3D);
  pg3 = createGraphics(900, 900, P3D);
  canvas = createGraphics(900, 900, P3D);
  img = loadImage("1.png");
  img.resize(900, 900);
  f = createFont("Inter-Black.otf", 100);
}

void draw() {
  background(#020003);

  directionalLight(126, 126, 126, 0, 0, -1);
  ambientLight(220, 12, 102);

  wave = map(sin(radians(frameCount)*0.2), -1, 1, -50, 50);
  wave1 = map(tan(radians(frameCount)), -1, 1, 0, 150);

  float amp = rms.analyze();
  //float deg = map(sin(radians(frameCount)*0.2), -1, 1, 1, 80);

  drawPg1();
  //drawPg2();
  //drawPg3();

  canvas.beginDraw();
  canvas.imageMode(CENTER);
  canvas.background(0);
  canvas.pushMatrix();
  canvas.translate(canvas.width/2, canvas.height/2);
  canvas.image(pg1, 0, 0);
  canvas.image(pg2, 0, 0);
  canvas.image(pg3, 0, 0);
  canvas.popMatrix();
  canvas.endDraw();




  float tilesX = 25;
  float tilesY = 25;

  float tileW = width/tilesX;
  float tileH = height/tilesY;

  fill(0);
  noStroke();

  PImage buffer = canvas.get();

  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {

      int px = int(x * tileW);
      int py = int(y * tileH);

      color c = buffer.get(px, py);
      //color c = (#f5cbff);
      float b = brightness(c);

      float s = map(b, 0, 255, 0, 1);

      pushMatrix();
      translate(px, py, 0);
      //rect(0, 0, tileW *s*amp, tileH * s);
      //rotateY(0.5);
      noStroke();
      rotateY(PI/5);
      sphere(10+tileH*s*amp*5);
      popMatrix();
    }
    fill(250);
    textSize(15);
    text("vhdvhd    _ A man, trapped in an ad", 30, 706);
  }

  //saveFrame("output/####_ad.png");
}
