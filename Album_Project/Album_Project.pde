import processing.sound.*;
SoundFile song;
PImage GKMC;
//Good Kid, M.A.A.D. City - Kendrick Lamar
PImage FHD;
//Forest Hills Drive - J. Cole
PImage FB;
//Flowerboy - Tyler the Creator
PImage AC;
//Acid Rap - Chance the Rapper
PImage AT;
//American Teen - Khalid
PImage LW;
//Last Winter - Bas
PImage CB;
//Coloring Book - Chance the Rapper 
PImage X; 
//17- xxxtentacion
PFont BTN;

float[] albumXs= new float[8];
float [] albumYs= new float [8];

void setup()
{
  fullScreen();
   song = new SoundFile(this, "elijah who - sad and boujee.mp3");
  
  imageMode(CENTER);
  FHD = loadImage("FHD.jpg");
  FHD.resize(300, 300);
  GKMC = loadImage("GKMC.jpg");
  GKMC.resize(300, 300);
  FB = loadImage("FB.jpg");
  FB.resize(300, 300);
  AC = loadImage("AC.jpg");
  AC.resize(300, 300);
  AT = loadImage("AT.jpg");
  AT.resize(300, 300);
  LW = loadImage("LW.jpg");
  LW.resize(300, 300);
  CB = loadImage("CB.png");
  CB.resize(300, 300);
  X = loadImage("X.jpeg");
  X.resize(300, 300);
 BTN = createFont("BTN.TTF", 32);
   textFont(BTN);
   textAlign(CENTER);
  

  for (int i=0; i<8; i++)
  {
    albumXs[i]= i*width/4 + 100;
  }

  for (int i=0; i<8; i++)
  {
    albumYs[i]= height/2;
  }
}


void draw()
{
  background(0);
  assignAlbums();
   fill(255);
  textSize(100);
  text("Shaan's Music", width/2, height/2 - 250);
}

void assignAlbums()
{
  image (FHD, albumXs[1], albumYs[1]);
  image(GKMC, albumXs[0], albumYs[0]);
  image(FB, albumXs[2], albumYs[2]);
  image(AC, albumXs[3], albumYs[3]);
  image (AT, albumXs[4], albumYs[4]);
  image (LW, albumXs[5], albumYs[5]); 
  image (CB, albumXs[6], albumYs[6]);
  image (X, albumXs[7], albumYs[7]);
}

void mouseWheel(MouseEvent event) 
{
  float e = event.getCount();

  for (int i=0; i<8; i++)
  {
    albumXs[i]+=e*4;
  }
  println(e);
}

void mousePressed()
{
  if (dist(mouseX, mouseY, albumXs[0], albumXs[0]) < 150)
  {
    song.play();
  }
}