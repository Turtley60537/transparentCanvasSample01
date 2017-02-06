import processing.awt.PSurfaceAWT;
import java.awt.*;
import javax.swing.*;

PSurfaceAWT awtSurface;
PSurfaceAWT.SmoothCanvas smoothCanvas; 
void setup() {
  size(200, 200);
  surface.setResizable(true);

  awtSurface = (PSurfaceAWT) surface;
  smoothCanvas 
    = (PSurfaceAWT.SmoothCanvas) awtSurface.getNative();

  smoothCanvas.getFrame().removeNotify();
  smoothCanvas.getFrame().setUndecorated(true);
  smoothCanvas.getFrame().setSize(400, 400);

  smoothCanvas.getFrame().setBackground(new Color(0, 0, 0, 100));
  println(smoothCanvas.getFrame().getBackground());

  smoothCanvas.getFrame().setOpacity(0.5f);

  smoothCanvas.getFrame().setLocation(200, 200);
  //smoothCanvas.getFrame().addNotify();
  smoothCanvas.setBounds(0, 0, 0, 0);

  x  = 100;
  y  = 100;
  vx = 2;
  vy = 2;
}

int x, y, vx, vy;

void draw() {
  background(200);
  fill(255, 0, 0);
  ellipse(x, y, 150, 150);
  x += vx;
  y += vy;
  if (x<75 || x>width-75)  vx *= -1;
  if (y<75 || y>height-75) vy *= -1;
}