public class Text{
  private String t;
 private int PosX;
 private int PosY;
  
  public Text(String t,int x, int y){
    this.t=t; 
    this.PosX=x;
    this.PosY=y;
    
 }
  
public int getX(){
  return this.PosX;
 }
  
  public int getY(){
  return this.PosY;
 }
  public String getT(){
  return this.t;
 }
  
  
  
  
  
}
