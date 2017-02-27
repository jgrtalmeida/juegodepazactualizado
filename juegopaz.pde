import processing.video.*;

color[] hot = {#FF540D, #E82C0C, #FF0000, #E80C7A, #FF0DFF};
color[] green = {#B1FF69, #09FF82, #4AB3FF, #FFE354, #FFB857};
color[] clean = {#FF980D, #E85450, #8F00FF, #297FE8, #4EFFAA};
color[] blue = {#1BB8FF, #19DEE8, #28FFCD, #19E87D, #1BFF49};
color[] palette = blue;
int choice;
int p1 = 1;
int s = 50;
int a = 50;
int b = 50;
PVector speed;
float w = width;
float h = height;
float m, v;
PFont sampleFont;
float distance = sqrt(pow(m-h,2) + pow(v-w,2));
Movie Violencia;


void movieEvent(Movie Violenca) {
  Violencia.read();
}

void setup(){
  size(1300, 800);
   speed = new PVector();
  speed.x = random (0, 40);
  speed.y = random (0, 40);
  smooth();
  noStroke();
  frameRate(10);

}

void draw(){
   background(palette[p1]);
    for(int x = 0; x <= width; x += s){
    for(int y = 0; y <= height; y += s) {
      fill(palette[int(random(1, 5))]);
     ellipse(x, y, s, s);
    }
  }
    noStroke();
  fill(palette[int(random(1, 5))]);
  int x = int(random(width/s))*s;
  int y = int(random(height/s))*s;
  ellipse(x, y, s, s);
  //texto
    String wordText = "La paz es amenazada por el código de policia\nAyude al skatista escapar del tombo\n (derecha S / izquierda A / arriba W / abajo S) \n\ncambie el color con 1 2 3 o 4";
sampleFont = loadFont("AgencyFB-Reg-48.vlw");
textFont(sampleFont);
fill(#FFE224);
textAlign(LEFT, CENTER);
textLeading(50);
text(wordText, 280, 600);
  fill(255);
  // P
  ellipse(300,400,a,a);
  ellipse(300,350,a,a);
  ellipse(300,300,a,a);
  ellipse(300,250,a,a);
  ellipse(300,200,a,a);
  ellipse(300,150,a,a);
   ellipse(350,150,a,a);
   ellipse(400,150,a,a);
   ellipse(450,150,a,a);
   ellipse(450,200,a,a);
   ellipse(450,250,a,a);
   ellipse(450,300,a,a);
   ellipse(400,300,a,a);
   ellipse(350,300,a,a);
   // A
   ellipse(550,400,a,a);
   ellipse(550,350,a,a);
   ellipse(550,300,a,a);
   ellipse(550,250,a,a);
   ellipse(550,200,a,a);
   ellipse(550,150,a,a);
   ellipse(550,150,a,a);
   ellipse(600,150,a,a);
   ellipse(650,150,a,a);
   ellipse(700,150,a,a);
   ellipse(700,200,a,a);
   ellipse(700,250,a,a);
   ellipse(700,300,a,a);
   ellipse(650,300,a,a);
   ellipse(600,300,a,a);
   ellipse(700,350,a,a);
   ellipse(700,400,a,a);
   // Z
   ellipse(800,400,a,a);
   ellipse(850,400,a,a);
   ellipse(900,400,a,a);
   ellipse(950,400,a,a);
   ellipse(1000,400,a,a);
   ellipse(850,350,a,a);
   ellipse(900,300,a,a);
   ellipse(950,250,a,a);
   ellipse(1000,200,a,a);
   ellipse(1000,150,a,a);
   ellipse(950,150,a,a);
   ellipse(900,150,a,a);
   ellipse(850,150,a,a);
   ellipse(800,150,a,a);

//policia

PImage policia;
policia = loadImage("policia.png");
//int m = int(random(width/s))*s;
//int v = int(random(height/s))*s;
//frameRate(1);
image(policia, m, v, 200, 200);
float testMove = random(0, 1);
if(testMove < 0.1) {
  speed.rotate(random(-0.3, 0.3));
}
if(testMove > 0.97) {
  speed.rotate(random(-1, 1));
}
 m = m - speed.x;
    v = v - speed.y; 
    
 if( borderControl() == true) {
m = m + speed.x;
v = v + speed.y;   
    speed.rotate(random(-2, 2));
 }

 
// skater
PImage skater;
skater = loadImage("skater.png");
image(skater, h, w, 400, 400);


//skater movement ( estaba dando un error con w =+ 20 entonces tuve que poner asi pues fue la unica fuerma que funcionó)
 if (keyPressed) {
  
     if (key == 's' || key == 'S') {
      w ++;
      w ++;
      w ++;
      w ++;
      w ++;
      w ++;
      w ++;
      w ++;
      w ++;
      w ++;
      w ++;   
      w ++;
      w ++;
      w ++;
      w ++;
      w ++;
      w ++;
      w ++;
      w ++;
      w ++;
      w ++;
      w ++;
      
     }
  if (key == 'w' || key == 'W') {
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
      w --;
    }   
      if (key == 'd' || key == 'W') {
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
      h ++;
    }   
     if (key == 'a' || key == 'A') {
      h --;
      h --;
      h --;
      h --;
      h --;
      h --;
      h --;
      h --;
                                                          h --;
      h --;
      h --;
      h --;
      h --;
      h --;
      h --;
      h --;
      h --;
      h --;
      h --;
      h --;
    }
    
     //profe, yo revisé los códigos y no logro entender porque de este error: JNA: could not detach thread, en los foruns tampoco logré algun resultado
Violencia = new Movie (this, "Violencia.mp4") ;
if( (h-m) <= 20){
  Violencia.play(); 
//  reset();
}

}

}
 boolean borderControl() {
  if( m < 0 || m > width || v > height || v < 0 ) 
  return true;
  
  return false;
  
}

void keyPressed(){
  
p1 = int(random(1, 5));
    
  int choice = key;
  switch(choice){
    case 49:
      palette = hot;
      break;
    case 50:
     palette = green;
      break;
    case 51:
      palette = clean;
      break;
    case 52:
      palette = blue;
      break;
  }
}
//(no logré entender como establezco el reset)
//void reset(){
  
  
 //}
 
  