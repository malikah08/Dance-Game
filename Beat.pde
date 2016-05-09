class Beat
{
  private float _x;
  private float _y;
  private int _id;
  private float _dirX;
  private float _dirY;
  private color _col;
  private int _key; 
  
  //Do I need speed?
  
  Beat()
  {
    _x=0;
    _y=0;
    _dirX=3;
    _dirY=3; 
    _id=-1; 
    _col = color(255,255,255);
  }
  
  public void Draw()
  {
    fill(_col);
    ellipse(_x, _y, 40,40);
  }
  
  public void Move()
  {
     _y+=_dirY;
  }
  
  public void Pressed()
  {
    if(_y>650)
    {
      if(_y<730)
      {
        println("Key is pressed!!!");
        _col= color(0); 
      }
    }
  }
  
 public int getid()
 {
   return _id; 
 }
}