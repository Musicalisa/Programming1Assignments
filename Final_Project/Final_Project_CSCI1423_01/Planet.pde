class Planet {
  //data
  float x;
  float y;
  float d;

  //constructor
  Planet(float tempX, float tempY, float tempD) {
  x = tempX;
  y = tempY; 
  d = tempD;
  }
  
  //functions
  void drawPlanet(float x, float y, float d) {
   stroke(0);
   int[] vals = int(split(color_vals[i], ","));
    fill(vals[0], vals[1], vals[2]);
     i++;
     if (i == color_vals.length) {
       i=0;
   }

  ellipse(x,y,d,d);
    if (d>10){
    drawPlanet(x+d/2,y,d/2); 
    drawPlanet(x-d/2,y,d/2);
    if((mousePressed == true)){
    drawPlanet(x,y+d/2,d/2); 
    drawPlanet(x,y-d/2,d/2);
   }else if((keyPressed == true)){
    drawPlanet(x,y+d/2,d/4); 
    drawPlanet(x,y-d/2,d/4);
   }
  }
  }
}