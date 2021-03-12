public class Text {
  private String t;
  private int PosX;
  private int PosY;
  private boolean canMove;
  public Text(String t, int x, int y) {
    this.t=t; 
    this.PosX=x;
    this.PosY=y;
    this.canMove=true;
  }
  
   public Text(String t, int x, int y,boolean canMove) {
    this.t=t; 
    this.PosX=x;
    this.PosY=y;
    this.canMove=false;
  }

  public int getX() {
    return this.PosX;
  }

  public int getY() {
    return this.PosY;
  }
  public String getT() {
    return this.t;
  }

  public void show() {
    fill(0);
    textSize(26); 
    text(this.t, PosX, PosY);
   
    if(this.isHovering()==true){
    if(mousePressed==true){
      if(this.canMove==true){
   this.PosX=mouseX;
      this.PosY=mouseY;
      
    }
    }
    }
  }


public boolean isHovering() {
    if (mouseX >= this.PosX-50 && mouseX<= this.PosX+50 && mouseY >= this.PosY-50 && mouseY <= this.PosY+50) {
 return true;
     
    } else {
    
      return false;
    }
  }
}
