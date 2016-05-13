Zone z;
//Beat b[];
int startTime;
int Score=0;
int RandomCircle;
ArrayList<Beat> b;
import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer song;
BeatDetect detect;




void setup()
{
  size(600, 800, P3D);
  background(0); 
  startTime=millis();


  minim = new Minim(this);
  song = minim.loadFile("Major.mp3", 2048);
  song.play();

  detect = new BeatDetect();
  detect.setSensitivity(900);

  z = new Zone(0, 650, 60); //put the position in here.
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
  stroke(255); 
  for (int i = 0; i < song.bufferSize() - 1; i++)
  {
    line(i, 50 + song.left.get(i)*50, i+1, 50 + song.left.get(i+1)*50);
    line(i, 150 + song.right.get(i)*50, i+1, 150 + song.right.get(i+1)*50);
  }
  textSize(50);
  fill(255); 
  textAlign(CENTER);
  text( Score, 500, 50);
  detect.detect(song.mix);
  z.Draw();
  if (detect.isOnset())
  {    
    RandomCircle = (int)random(0, 4);
    if ( RandomCircle == 0)
    {
      b.add(new GreenBeat());
    }
    if ( RandomCircle == 1)
    {
      b.add(new RedBeat());
    }
    if ( RandomCircle == 2)
    {
      b.add(new BlueBeat());
    }
    if ( RandomCircle == 3)
    {
      b.add(new YellowBeat());
    }
  }

  for (int i=0; i< b.size(); i++)
  {
    b.get(i).Draw();
    b.get(i).Move();
    b.get(i).Die(); 
    //if(COLLISION CODE)
    //b.remove(i);
  }


  //fo r (int i=0; i< 30; i++)
  //{
  // if (millis()-startTime>500)
  // {
  //   b[i].Draw();
  //   b[i].Move();
  //  }
  //}
  if (keyPressed)
  {
    //   if (key == CODED)
    {
      {
        if (keyCode == RIGHT)
        {
          println("working"); 
          for (int i=0; i< b.size(); i++)
          {
            if (b.get(i).getid() == 0) //Green Beat
            {
              b.get(i).Pressed();
            }
          }
        }

        if (keyCode == LEFT)
        {
          for (int i=0; i< b.size(); i++)
          {
            if (b.get(i).getid() == 2) //Blue Beat
            {
              b.get(i).Pressed();
            }
          }
        }

        if (keyCode == UP)
        {
          for (int i=0; i< b.size(); i++)
          {
            if (b.get(i).getid() == 1) //Red Beat
            {
              b.get(i).Pressed();
            }
          }
        }

        if (keyCode == DOWN)
        {
          for (int i=0; i< b.size(); i++)
          {
            if (b.get(i).getid() == 3) //Yellow Beat
            {
              b.get(i).Pressed();
            }
          }
        }
      }
    }
  }
}