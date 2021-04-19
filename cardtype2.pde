public class cardtype2 extends card{
  private GTextField g;
  private String Answer;
    //textfield5 = new GTextField(this, 122, 254, 341, 65, G4P.SCROLLBARS_NONE);
  //textfield5.setOpaque(true);
 // textfield5.addEventHandler(this, "textfield5_change1");
  public cardtype2(int type,String answer){
    super(type);
 this.g=new GTextField(pa,300,100,100,25,G4P.SCROLLBARS_NONE);
 this.g.setVisible(false);
this.Answer=answer;
 

}
  
 

  
  public void showCard(){
   super.showCard(); 
   this.g.setVisible(true);
   
   
   
   
   
    
  }
  
  
  
  
  
}
