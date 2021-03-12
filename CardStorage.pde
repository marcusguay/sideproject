


public class CardStorage {
private int Total;
  private ArrayList<card> Cards;
 
  
  public CardStorage() {
    this.Cards=new ArrayList<card>();
  }


 public void addCard(card c){
   
  this.Cards.add(c); 
  this.Total++;
   }
  
  public ArrayList getArray(){
    
    return this.Cards;
  }
  
    public int getTotal(){
    
    return this.Total;
  }
  
   
   
   public void showCard(int j){
       
     this.Cards.get(j).showCard();
     
     
   }
  
     public void switchSide(int j){
       
     this.Cards.get(j).CycleCards();
     
     
   }
  
}
