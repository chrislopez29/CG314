void setup() {
     size(600, 400);
  background(0, 0, 0);
  
  //head?
ellipse (300, 100, 200, 100); //head
fill (150, 150, 150);

//antene
rect (298, 30, 5, 20, 1);
ellipse (300, 30, 20, 20);

//eyes hopefully
ellipse (250, 90, 50, 50);
ellipse (350, 90, 50, 50);
fill (0, 0, 0);

//mouth?
rect (280, 120, 40, 10, 1);
fill (255, 255, 255);

//body
rect (260, 150, 80, 100, 2);

//armR
rect (160, 160, 100, 30, 1);
//armL
rect (340, 160, 100, 30, 1);

//wheel stick 
rect (295, 250, 10, 110, 1);

//wheel
ellipse (300, 355, 60, 60);
}
