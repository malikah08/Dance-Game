class Zone
{
  private float _x;
  private float  _y;
  private float _w;
  private float _h;

  Zone(float x, float y, float h)
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
}