void drawPg1() {
  pg1.beginDraw();
  pg1.background(#111111);
  //pg1.fill(#f98f6e);
  pg1.noStroke();
  pg1.pushMatrix();
  pg1.translate(pg1.width/2, pg1.height/2);
  pg1.rotateY(radians(frameCount));
  //pg1.ellipse(0, 0, 700, 700);
  pg1.imageMode(CENTER);
  pg1.image(img, 0,0);
  pg1.popMatrix();
  pg1.endDraw();
}
