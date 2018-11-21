//Creators: Lisa Cifuentes, Tanya McClory, and Ruthann Gardner
//Purpose: To create a visual prgram that is interactive, uses recursion,
//and incorporates concepts learned throughout this course.
//12/08/16

import processing.sound.*;
SoundFile file;
PImage bg;
Planet p1, p2, p3, p4, p5;
String[] color_vals = new String[3];
int i = 0;

void setup (){
    size(640,600);
    frameRate(45);
     bg = loadImage("space2.jpg");
   file = new SoundFile(this,"finalfantasy.mp3");
   file.play(); 
   color_vals = loadStrings("color14.txt");
    p1 = new Planet(mouseX,mouseY,200); 
    p2 = new Planet((random(width/5,width/4.5)),(random(height/5,height/4.5)),100);
    p3 = new Planet(width-(random(width/5,width/4.5)),height-(random(height/5,height/4.5)),100);
    p4 = new Planet((random(497.7778,512)),((random(120,133.3333))),100); 
    p5 = new Planet((random(128,142.2222)),((random(466.666,480))),100); 
}

void draw () {
   frameRate(3.5);
 background(bg);
  p1.drawPlanet(mouseX,mouseY,200); 
  p2.drawPlanet((random(width/5,width/4.5)),(random(height/5,height/4.5)),100);
  p3.drawPlanet(width-(random(width/5,width/4.5)),height-(random(height/5,height/4.5)),100);
  p4.drawPlanet((random(497.7778,512)),((random(120,133.3333))),100); 
  p5.drawPlanet((random(128,142.2222)),((random(466.666,480))),100); 
}

  