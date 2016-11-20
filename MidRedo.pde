PImage Gene;

import ddf.minim.*;

Minim minim;
AudioPlayer quack;
AudioPlayer moo;
AudioPlayer ding;
AudioPlayer drum;
AudioPlayer meow;
AudioPlayer fart;

void setup()
{
  size(800, 400, P3D);
  Gene = loadImage("Gene.png");
  
  minim = new Minim(this);
  
  quack = minim.loadFile("quack.mp3");
  moo = minim.loadFile("moo.mp3");
  ding = minim.loadFile("ding.mp3");
  drum = minim.loadFile("drum.mp3");
  meow = minim.loadFile("meow.mp3");
  fart = minim.loadFile("fart.mp3");
}

void draw(){
background(150,0,150);
//key1
fill(255);
rect(120,180,60,160);

//key2
fill(255);
rect(180,180,60,160);

//key3
fill(255);
rect(240,180,60,160);

//key4
fill(255);
rect(300,180,60,160);

//key5
fill(255);
rect(360,180,60,160);

//key6
fill(255);
rect(420,180,60,160);

//black keys decoration
fill(0);
rect(165,180,30,80);
rect(225,180,30,80);
rect(285,180,30,80);
rect(345,180,30,80);
rect(405,180,30,80);

image(Gene,534,92);


String s = "Gene's Keyboard!";
  textSize(64);
  text(s, 50, 100);
  

}

void mousePressed(){
  if(mouseX > 120 && mouseX < 180 && mouseY > 180 && mouseY < 340){
  quack.rewind();
  quack.play();
  }
  
  if(mouseX > 180 && mouseX < 240 && mouseY > 180 && mouseY < 340){
  moo.rewind();
  moo.play();
  }
  
  if(mouseX > 240 && mouseX < 300 && mouseY > 180 && mouseY < 340){
  ding.rewind();
  ding.play();
  }
  
  if(mouseX > 300 && mouseX < 360 && mouseY > 180 && mouseY < 340){
  drum.rewind();
  drum.play();
  }
  
  if(mouseX > 360 && mouseX < 420 && mouseY > 180 && mouseY < 340){
  meow.rewind();
  meow.play();
  }
  
  if(mouseX > 420 && mouseX < 480 && mouseY > 180 && mouseY < 340){
  fart.rewind();
  fart.play();
  }
}