void drawPg3() {
  pg3.beginDraw();
  pg3.clear();
  pg3.textMode(BOTTOM);
  pg3.fill(#00FF00);
  pg3.pushMatrix();
  pg3.translate(pg2.width/2, pg2.height/2);
  //pg3.rotate(radians(frameCount));
  pg3.textFont(f);
  pg3.textSize(10);
  pg3.text("vhdvhd", -220, 400);

  pg3.popMatrix();
  pg3.endDraw();
}
