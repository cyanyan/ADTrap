void drawPg2() {
  pg2.beginDraw();
  pg2.clear();
  pg2.rectMode(CENTER);
  pg2.stroke(#aaaaaa);
  pg2.strokeWeight(20);
  pg2.noFill();
  pg2.pushMatrix();
  pg2.translate(pg2.width/2, pg2.height/2);
  //pg2.rotate(radians(frameCount));
  pg2.rect(0, 0, 600, 600);
  pg2.popMatrix();
  pg2.endDraw();
}
