class Zone
{
  private float _x;
  private float  _y;
  private float _w;
  private float _h;

  Zone(float x, float y,  float h)
  {
    _x=x;
    _y=y;
    _w=width;
    _h=h; 
  }
  
  void Draw()
  {
    fill(255); 
    rect(_x, _y, _w, _h);
  }
  
  //boolean IsColliding(Beat b)
  {
    //This function receives a beat and replies
    // with a true or fale on whether the beat is
    // inside of the zone or not.
  }
}