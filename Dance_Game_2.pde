Zone z;
//Beat b[];
int startTime;
ArrayList<Beat> b;
import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer song;
BeatDetect detect;



void setup()
{
  fullScreen(P3D);
  background(0); 
  startTime=millis();

  minim = new Minim(this);
  song = minim.loadFile("Major.mp3", 2048);
  song.play();

  detect = new BeatDetect();
  detect.setSensitivity(2000);

  z = new Zone(0, 800, 60); //put the position in here.
  b= new ArrayList<Beat>();
  //b= new Beat[30];
  //for (int i=0; i<30; i++)
  //{
  //  b[i]=new Beat();
  //}
}

void draw()
{
  background(0);
  detect.detect(song.mix);
  z.Draw();
  if (detect.isOnset())
  {
    b.add(new Beat());
  }

  for (int i=0; i< b.size(); i++)
  {
    b.get(i).Draw();
    b.get(i).Move();
    //if(COLLISION CODE)
    //b.remove(i);
  }

  //for (int i=0; i<30; i++)
  //{
  // if (millis()-startTime>500)
  // {
  //   b[i].Draw();
  //   b[i].Move();
  //  }
  //}
}