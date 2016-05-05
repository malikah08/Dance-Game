class Beat
{
  private float _x;
  private float _y;
  private float _dirX;
  private float _dirY;
  
  //Do I need speed?
  
  Beat()
  {
    _x=random(0,width);
    _y=0;
    _dirX=3;
    _dirY=3; 
  }
  
  public void Draw()
  {
    fill(245,212,40);
    ellipse(_x, _y, 40,40);
  }
  
  public void Move()
  {
     _y+=_dirY;
  }
  
  
}