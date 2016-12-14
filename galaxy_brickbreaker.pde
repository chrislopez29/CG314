import processing.video.*;
Capture video;

Star[] stars = new Star[800];
void setup() {
  
  
  
  size(900, 700);
  
  video = new Capture(this, 640, 480);
  video.start();
  
  //star stuff
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  rectMode(CENTER);
  
  for (int i=0; i<30; i++) {
    bricks[i] = 1;

  }
}

//bricks
int [] bricks = new int [30];

//ball place and speed
int x = 150;
int y = 430;
int x_speed = 5;
int y_speed = 5;

//paddle location
int paddleX = mouseX, paddleY = 650; 
int paddle_wideness = 80;

int what =0;

void draw() {
    
  background(0);
  
  if (video.available());
  video.read();
   
   //star stuff again
   pushMatrix();
    translate(width/2, height/2);
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
}
  int i, x_tmp, y_tmp;
  int dead;
  popMatrix();
  
  //ball speed
  x = x + x_speed;
  y = y + y_speed;
  
  //sandbox for ball
  if (y<0)
    y_speed = -y_speed;
  if (x>width || x<0)
    x_speed = -x_speed;
  
  //paddle movement
  if ((mouseX-(paddle_wideness/2))<x && (mouseX+(paddle_wideness/2))>x &&
    y>652) {
    y_speed = -y_speed;
  }

 //reset button
  //else if (key == 'r') {
      //x = 150;
      //y = 430;
      //x_speed = 5;
      //y_speed = -5;
      
      //   }
 

  //bounce collider
  if ((paddleX-paddle_wideness)<x && (paddleX+paddle_wideness)>x && 
    (paddleY-10)<y && (paddleY)>y) {
    y_speed = -y_speed;
  }
  
  image(video,0,0);
  
//ball
  fill(255);
  ellipse(x,y,20,20);
//paddle
  fill(255);
  rect(mouseX, 660, paddle_wideness,15);
  
  //following code for disapearing blocks when ball hits them was made with help from tutorial
  
dead = 1;
  
  // Loop through all the potential blocks
  for (i=0; i<30; i++) {
  
    // Calculate the x,y position of upper right corner
    x_tmp = i%5*200+10; // %5 is modulus - will result 0-4 always 
    y_tmp = 70*(i/5)+10; 
    
    // Check if we we have a block (blocks[x] is 1)
    if (bricks[i]==1) { 
    
      // Draw the block
      rect(x_tmp+40, y_tmp+10, 80, 20);
      
      // Since we drew a block, all are not gone
      dead = 0;
    }
    
    // Check if ball is over the block, if so, remove it (blocks[i]=0) 
    // first check bounce on top/bottom
    if (x>(x_tmp+4) && x<(x_tmp+76) &&
      y>y_tmp && y<(y_tmp+20) && bricks[i]==1) { 
      bricks[i]=0;
      y_speed = -y_speed;
    }
    
    // first check bounce on sides
    if (((x>(x_tmp-5) && x<x_tmp) || (x>(x_tmp+80) && x<(x_tmp+85))) &&
      y>y_tmp && y<(y_tmp+20) && bricks[i]==1) { 
      bricks[i]=0;
      x_speed = -x_speed;
    }
    // first check bounce on sides
    if (((x>(x_tmp-1) && x<(x_tmp+5)) || (x>(x_tmp+75) && x<(x_tmp+81))) &&
      y>y_tmp && y<(y_tmp+20) && bricks[i]==1) { 
      bricks[i]=0;
      x_speed = -x_speed;
      y_speed = -y_speed;
      
      //this concludes tutorial assisted code
      
  }
}
}