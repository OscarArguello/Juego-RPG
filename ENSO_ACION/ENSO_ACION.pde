
int x,y;
int a=0;
int j1 ,j2;
Poderes Stephen, Fiona, Camilla, Kafka, Bukowski;
int turno=1;
float vida1, vida2;
float ataque1, ataque2;
int ganador;
Drop[] drops = new Drop[250];


class Drop {
  float x = random(width);
  float y = random(-200,-100);
  float yspeed = random(4,10);
  float len = random(10,20);
  

  void fall(){
    y = y + yspeed;
    if(y > height){
      y = random(-200,-100);
  }
  }
  
  void show(){
    stroke(255);
    line(x,y,x,y+len);
  }
}


class Poderes{
 String nombre;
 int ataque;

 int x, y;   
 int dios;
 
 Poderes(String nombre_, int ataque_, int x_, int y_){
 nombre = nombre_;
 ataque = ataque_;

 
x= x_;
y=y_;

}
}
 
 
void setup(){
size (600, 600);
Stephen = new Poderes("Stephen", 105, 450,450);
Fiona = new Poderes("Fiona", 100, 200, 200);
Camilla = new Poderes("Camilla", 120, 700,700);
Kafka = new Poderes("Kafka", 110, 900, 900);
Bukowski= new Poderes("Bukowski", 130, 600, 600);


 for (int i = 0; i < drops.length; i++){
   drops[i] = new Drop();
   }

}

void draw(){

background(255);



if (a==0)
{
  println (a);
   pantallaUno();
   if ((mousePressed) && (mouseX > 390) && (mouseX<390+120) && (mouseY>370) && (mouseY<370+50)){
   a=1;
   println (a);
}
}
if (a==1)
{
  pantallaPersonajes();
mouseClicked();
 Stephen(450,450);
    Fiona(200,200);
   Camilla(700,700);
    Kafka(900,900);
  Bukowski(600,600);
if ((j1 !=0 && j2!=0) &&(j1 !=j2)){
  a=2;
}
}

if(a==2){
 pantallaPelea();
 if (vida1<=0 || vida2<=0){
 a=3;
 }
}
 
if (a==3){
  pantallaFin();
 
  if (vida1<=0){
  ganador= j1 ;
  }
  else if (vida2<=0){
  ganador= j1 ;
  }
  
     if (ganador==j1 ){
       if(j1 ==1){
   Stephen (510,500);
   fill(255);
   }
   else if(j1 ==2){
   Fiona (475,675);
     fill(255);
   }
   else if(j1 ==3){
   Camilla (550,425);
     fill(255);
      
   }
   else if (j1 ==4){
   Kafka (850,1200);
     fill(255);
        
   }
   else if (j1 ==5){  
   Bukowski (225,900);
     fill(255);
            
   
 }
  else if (ganador==j2){
       if(j2==1){
   Stephen(510,500);
     fill(255);
   
   }
   else if(j2==2){
   Fiona (475,675);
     fill(255);
      
   }
   else if(j2==3){
   Camilla (575,425);
     fill(255);
         
   }
   else if (j2==4){
   Kafka (850, 1200);
     fill(255);
            
   }
   else if (j2==5){
   Bukowski (225,900);
     fill(255);
            
   }
 }
if (keyPressed && (key=='n')){
a=0;
j1=0;
j2=0;
}
}
}
for (int i = 0; i < drops.length; i++){
   drops[i].fall();
   drops[i].show();
   }
}



void pantallaUno(){
  if ((a==0)&&(j1==0)&&(j2==0)){
      background (189);
      fill(0);
      rect (0,0,width,height);
      
       fill(0);
  rect(0,0,600,600);
  //marco
  fill(255);
  rect(24,25,555,555);
  
  fill(0);
  rect(26,27,550,550);
  
  fill(255);
  rect(38,39,530,530);
  
  fill(0);
  rect(40,41,526,526);
  //esquinas
  fill(255);
  ellipse(45,45,80,80);
  noStroke();
  
  fill(0);
  ellipse(45,45,70,70);
  noStroke();
  //2
  fill(255);
  ellipse(555,555,80,80);
  noStroke();
  
  fill(0);
  ellipse(555,555,70,70);
  noStroke();
  //3
   fill(255);
  ellipse(45,555,80,80);
  noStroke();
  
  fill(0);
  ellipse(45,555,70,70);
  noStroke();
  //4
  fill(255);
  ellipse(555,45,80,80);
  noStroke();
  
  fill(0);
  ellipse(555,45,70,70);
  noStroke();
  
  
  //luna
  fill(255);
  ellipse(300,300,150,150);
  noStroke();
  fill(0);
  ellipse(285,295,150,150);
  fill(255);
  ellipse(260,280,10,10);
  
  //titulo
  fill(255);
  textSize(55);
  text("ENSOÑACION",128,180);
  }

fill(255);
textSize(40);
text("start",395, 415);

}

void pantallaPersonajes(){
  
background(0);
       
  fill(0);
  rect(0,0,600,600);
  //marco
  fill(255);
  rect(24,25,555,555);
  
  fill(0);
  rect(26,27,550,550);
  
  fill(255);
  rect(38,39,530,530);
  
  fill(0);
  rect(40,41,526,526);
  //esquinas
  fill(255);
  ellipse(45,45,80,80);
  noStroke();
  
  fill(0);
  ellipse(45,45,70,70);
  noStroke();
  //2
  fill(255);
  ellipse(555,555,80,80);
  noStroke();
  
  fill(0);
  ellipse(555,555,70,70);
  noStroke();
  //3
   fill(255);
  ellipse(45,555,80,80);
  noStroke();
  
  fill(0);
  ellipse(45,555,70,70);
  noStroke();
  //4
  fill(255);
  ellipse(555,45,80,80);
  noStroke();
  
  fill(0);
  ellipse(555,45,70,70);
  noStroke();

 
fill(255);
textSize(10);
text(" Kafka A - 4",390,350);
text("Camilla E - 3",290,350);
text("Bukowski M- 5",480, 350);
text("Stephen  D - 1", 70, 350);
text("Fiona R - 2", 192, 350);


textSize(20);
text("PLAYER 1",100,100);
text("'A'",130,120);
text("PLAYER 2",400,100);
text("'1'",430,120);
text("-ELIJE TU ALMA-",226,540);
text("-la vida esta fragmentada...",120,490);
text("...hay que verla de ambos lados-",160,510);



}

void Stephen(int xi, int yi){
  //CRUZ
   {
   push();
   translate(-10,0);
 rect(100,200,25,130);
 fill(255);
 noStroke();
 rect(58,230,110,25);
 pop();
   }
}
void Fiona(int xi, int yi){
   //corazon
 {
   push();
   translate(-25,30);
 fill(255);
 rect(210,212,25,5);
  fill(255);
 rect(209,214,27,5);
 fill(255);
 rect(208,216,29,5);
  fill(255);
 rect(207,218,31,5);
  fill(255);
 rect(206,220,33,5);
 
  fill(255);
 rect(250,212,25,5);
  fill(255);
 rect(249,214,27,5);
  fill(255);
 rect(248,216,29,5);
  fill(255);
 rect(247,218,31,5);
  fill(255);
 rect(246,220,33,5);
 
 fill(255);
 rect(205,220,75,5);
  fill(255);
 rect(204,222,77,5);
  fill(255);
 rect(203,224,79,5);
 fill(255);
 rect(204,226,77,5);
  fill(255);
 rect(205,228,75,5);
  fill(255);
 rect(206,230,73,5);
  fill(255);
 rect(207,232,71,5);
  fill(255);
 rect(208,234,69,5);
  fill(255);
 rect(209,236,67,5);
   fill(255);
 rect(210,238,65,5);
   fill(255);
 rect(211,240,63,5);
  fill(255);
 rect(212,242,61,5);
  fill(255);
 rect(213,244,59,5);
  fill(255);
 rect(214,246,57,5);
   fill(255);
 rect(215,248,55,5);
  fill(255);
 rect(217,250,51,5);
   fill(255);
 rect(219,252,47,5);
  fill(255);
 rect(221,254,43,5);
 fill(255);
 rect(223,256,39,5);
 fill(255);
 rect(225,258,35,5);
 fill(255);
 rect(227,260,31,5);
  fill(255);
 rect(229,262,27,5);
 pop();
 }
}
void Camilla(int xi, int yi){
  //dieresis
 {
   push();
   translate(-25,0);
 
 fill(255);
 rect(310,255,35,35);
 fill(255);
 rect(311,250,33,5);
  fill(255);
 rect(309,260,10,28);
   fill(255);
 rect(336,260,10,28);
 fill(255);
 rect(311,290,33,5);
 
 fill(255);
 rect(355,255,35,35);
 fill(255);
 rect(356,250,33,5);
  fill(255);
 rect(354,260,10,28);
   fill(255);
 rect(381,260,10,28);
 fill(255);
 rect(356,290,33,5);
 pop();
 }
 
}
void Kafka(int xi, int yi){
  //relog
 {
   push();
   translate(-25,0);
 fill(255);
 rect(430,230,50,10);
 fill(255);
 rect(431,240,48,10);
  fill(255);
 rect(432,250,46,5);
   fill(255);
 rect(433,255,44,5);
  fill(255);
 rect(434,260,42,5);
  fill(255);
 rect(437,265,36,5);
 fill(255);
 rect(439,270,32,5);
  fill(255);
 rect(441,275,28,5);
 
 fill(255);
 rect(430,320,50,10);
  fill(255);
 rect(431,310,48,10);
 fill(255);
 rect(432,306,46,5);
  fill(255);
 rect(433,302,44,5);
 fill(255);
 rect(434,300,42,5);
 fill(255);
 rect(435,298,40,5);
 fill(255);
 rect(436,296,38,5);
fill(255);
 rect(438,292,34,5);
 fill(255);
 rect(440,288,30,5);
 fill(255);
 rect(442,284,26,5);
  fill(255);
 rect(444,280,22,5);
 pop();
 }
}
 void Bukowski(int xi, int yi){
   //gota
 {
   push();
   translate(-23,30);
 fill(255);
 rect(520,235,50,10);
  fill(255);
 rect(521,232,48,10);
 fill(255);
 rect(522,230,46,5);
  fill(255);
 rect(523,228,44,5);
 fill(255);
 rect(524,226,42,5);
 fill(255);
 rect(525,224,40,5);
 fill(255);
 rect(527,222,36,5);
fill(255);
 rect(529,220,34,5);
 fill(255);
 rect(531,218,30,5);
 fill(255);
 rect(533,216,26,5);
  fill(255);
 rect(535,214,22,5);
 fill(255);
 rect(537,212,18,5);
 fill(255);
 rect(519,240,52,35);
  fill(255);
 rect(515,245,10,25);
  fill(255);
 rect(566,245,10,25);
  fill(255);
 rect(530,270,30,10);
   fill(255);
 rect(535,275,20,10);
 pop();
 }
 
  
}
  

void keyPressed(){
  if(a==1){
  switch(key){
  case 'd':
  j1= 1;

  vida1=100;
  ataque1= random (10,20);

  break;
  case 'r':
  j1= 2;

    vida1=100;
ataque1= random (10,20);
  break;
  case 'e':
  j1= 3;
  
    vida1=100;
ataque1= random (10,20);
  break;
  case 'a':
  j1= 4;
   
    vida1=100;
ataque1= random (10,20);
  break;
  case 'm':
  j1= 5;
    
    vida1=100;
ataque1= random (10,20);
  break;
  case '1':
  j2= 1;
 
    vida2=100;
    ataque2= random (10,20);
  break;
   case '2':
  j2=2;

    vida2=100;
    ataque2= random (10,20);
  break; 
  case '3':
  j2=3;
 
    vida2=100;
    ataque2= random (10,20);
  break; 
  case '4':
  j2=4;

    vida2=100;
    ataque2= random (10,20);
  break;
  case '5':
  j2=5;

    vida2=100;
    ataque2= random (10,20);
  break;
  }
}

    
  if (turno==1 && a==2){
  if (key=='m'|| key== 'M'){
    vida2= vida2- ataque1; println(vida2);
    turno=2;}
    else if((vida1>39)&&(vida1<51)){
    if (key=='L' || key=='l'){
    
    turno=2;
    }
  }
    }

  if (turno==2 && a==2){
    if(key=='z' || key== 'Z'){
      vida1= vida1 - ataque2; println(vida1);
      turno=1;
    }else if((vida2>39)&&(vida2<51)){
    if (key=='A' || key=='a'){
   
    turno=1;
    }
  }
  
}
}

void pantallaPelea(){  
background(0);
fill(255,0,0);
text(vida1 ,50, 180);
fill(255,0,0);
text(vida2 ,450, 180);

 fill(0);
  rect(0,0,600,600);
  //marco
  fill(255);
  rect(24,25,555,555);
  
  fill(0);
  rect(26,27,550,550);
  
  fill(255);
  rect(38,39,530,530);
  
  fill(0);
  rect(40,41,526,526);
  //cuadro de texto
 fill(255);
   rect(40,350,528,220);
    noStroke();
 fill(0);
 rect(43,355,520,210);
    noStroke();
    
      //players
  fill(255);
  textSize(40);
  text("PLAYER 1",80,400);
  
  
  fill(255);
  textSize(40);
  text("PLAYER 2",350,400);
  
  //esquinas
  fill(255);
  ellipse(45,45,80,80);
  noStroke();
  
  fill(0);
  ellipse(45,45,70,70);
  noStroke();
  //2
  fill(255);
  ellipse(555,555,80,80);
  noStroke();
  
  fill(0);
  ellipse(555,555,70,70);
  noStroke();
  //3
   fill(255);
  ellipse(45,555,80,80);
  noStroke();
  
  fill(0);
  ellipse(45,555,70,70);
  noStroke();
  //4
  fill(255);
  ellipse(555,45,80,80);
  noStroke();
  
  fill(0);
  ellipse(555,45,70,70);
  noStroke();
  
  fill(255,0,0);
text(vida1 ,50, 500);
fill(255,0,0);
text(vida2 ,365, 500);




fill(255);
textSize(20);
text("ATACAR: M", 120,430);
text("ATACAR: Z", 420,430);


pushMatrix();

if(turno==2){
  textSize(35);
   fill(255);
text("PLAYER 2", 220, 110);
} 
else if(turno==1){
  textSize(35);
  fill(255);
text("PLAYER 1", 220,110);
}


if(j1==1){
  
  Stephen(350,500);
  textSize(10);
  fill(255);
  text("Stephen, jove estudiante con un padre alchoholico...", 50,160);
  
}
else if (j1==2){
  Fiona(330,685);
  textSize(10);
  fill(255);
    text("Fiona ilustradora adicta....", 50,160);
}
else if(j1==3){
  Camilla(400,425);
  textSize(10);
  fill(255);
    text("Camilla, amante del patinaje en hielo...", 50,160);
}
else if(j1==4){
 Kafka(700,1200);
 textSize(10);
 fill(255);
   text("Kafka, coleccionista de insectos...", 50,160);
 }
else if(j1==5){
  Bukowski(70,900);
  textSize(10);
  fill(255);
    text("Bukowski, amante de la bevida...", 50,160);
}

popMatrix();

pushMatrix();
  
if(j2==1){
  Stephen(750,500);
  textSize(10);
  fill(255);
   text("...abusivo hasta el final", 320,220);
  
}
else if(j2==2){
  Fiona(760,680);
  textSize(10);
  fill(255);
   text("...su diler marco el fin de su vida", 300,210);
}
else if(j2==3){
  Camilla(850,430);
  textSize(10);
  fill(255);
  text("...patino en hilo delgado", 330,215);
}
else if(j2==4){
 Kafka(1100,1200);
 textSize(10);
 fill(255);
 text("..toco al insecto equivocado", 330,215);
}
else if(j2==5){
  Bukowski(520,900);
  textSize(10);
  fill(255);
   text("...coma etilico", 330,215);
}

popMatrix();
}

void pantallaFin(){
  background(0);
  fill(0);
  rect(0,0,600,600);
  //marco
  fill(255);
  rect(24,25,555,555);
  
  fill(0);
  rect(26,27,550,550);
  
  fill(255);
  rect(38,39,530,530);
  
  fill(0);
  rect(40,41,526,526);
  //esquinas
  fill(255);
  ellipse(45,45,80,80);
  noStroke();
  
  fill(0);
  ellipse(45,45,70,70);
  noStroke();
  //2
  fill(255);
  ellipse(555,555,80,80);
  noStroke();
  
  fill(0);
  ellipse(555,555,70,70);
  noStroke();
  //3
   fill(255);
  ellipse(45,555,80,80);
  noStroke();
  
  fill(0);
  ellipse(45,555,70,70);
  noStroke();
  //4
  fill(255);
  ellipse(555,45,80,80);
  noStroke();
  
  fill(0);
  ellipse(555,45,70,70);
  noStroke();
 
fill(255);
textSize(40);
text("-WINNER-", 200,225);
fill(255);
textSize(20);
text("presiona ", 250,60);
text("N", 285,80);
text("para riniciar", 242,100);
text("NO HAY TRACENDENCIA, SOLO OSCURIDAD", 90,530);


}
