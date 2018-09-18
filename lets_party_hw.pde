int presentS = 0;
int locationRect4 = -10;
int locationRect3 = -10;
int locationRect2 = -10;
int locationEllipse4 = 0;
int locationEllipse3 = 0;
int locationEllipse2 = 0;
int locationEllipse = 0;
int locationRect = -10;
int textZ = 30;
int textS = 50;
int confettiX = 100; // confettiX = 100 location
boolean messageActivator = false;
void setup() 
{
// set size
  size(800,800);
}
void draw()
{
// background
 background(240,200,0);

// draw confetti ellipses
 fill(200,0,200);
 ellipse(confettiX-50,locationEllipse,20,20);
 
// ellipse 2
 fill(200,250,0);
 ellipse(confettiX+100,locationEllipse2,20,20);
 
// ellipse 3
 fill(120,0,250);
 ellipse(confettiX+400,locationEllipse3,20,20);
 
// ellipse4
 fill(150,150,200);
 ellipse(confettiX+670,locationEllipse4,20,20);
 
// draw confetti rect
 fill(200,0,100);
 rect(confettiX,locationRect,20,20);

// draw rect2
fill(100,200,150);
rect(confettiX+260,locationRect2,20,20);

// draw rec
fill(250,200,250);
rect(confettiX+550,locationRect3,20,20);

// text # presents
 fill(130,190,170);
 textSize(textZ);
 text(presentS,450,600);
 println(presentS);
 
// text "number of presents
 text("number of presents:",150,600);
 
// text "Lets have a party"
 fill(120,170,200);
 textSize(textS);    
 text("Let's have a party!",200,450); 
 
// text "click screen to give presents"***
 fill(130,190,170);
 textSize(textZ); 
 text("click screen to give presents and to show",150, 500);
 text("a secret message!",150,550);
 
//text "This party is the best"
 if (messageActivator == true){
  fill(250,150,0);
  textSize(textZ);
  text("this party is the best!",200,670); 
  
// make confetti drop rect
 locationRect = locationRect + 10;
 locationRect2 = locationRect2 + 5; 
 locationRect3 = locationRect3 + 3;
 
 
// make confetti drop ellipse
 locationEllipse = locationEllipse + 6;
 locationEllipse2 = locationEllipse2 + 4;
 locationEllipse3 = locationEllipse3 + 8;
 locationEllipse4 = locationEllipse4 + 5;
 }
}
void mouseClicked()
{
// # of presents increase
 presentS = presentS + 1;
 
// activate secret message
 messageActivator = true;
}
