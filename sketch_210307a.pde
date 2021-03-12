import g4p_controls.*;
boolean createCard=false;
import java.util.ArrayList; 
int CardCounter=0;
Text text1= new Text("Front side", 225, 50, false);
Text text2= new Text("Back side", 225, 140, false);
card card1= new card();
Text tFront;
Text tBack;
card c;
CardStorage cards=new CardStorage();
keyRec FRec= new keyRec();
keyRec BRec= new keyRec();
Text text3= new Text("Back side", 225, 140, false);
int window=0;
int RandomCard=0;
void setup() {


  size(800, 450, JAVA2D);
  createGUI();
  textfield1.setVisible(false); 
  textfield2.setVisible(false);
  CardCreator.setVisible(false);
  button2.setVisible(false);
  button3.setVisible(false);
  button4.setVisible(false);
}



void draw() {

  background(255);
  stroke(0);
  fill(0);


  if (window==2) {
  cards.showCard(CardCounter);
     button2.setVisible(true);
  button3.setVisible(true);
   button4.setVisible(true);
  }  else{
    
    button2.setVisible(false);
  button3.setVisible(false);
     button4.setVisible(false);
    
  }

  if (window==1) {
    textSize(15); 
    text1.show();
    text2.show();
      
       
    textfield1.setVisible(true); 
    textfield2.setVisible(true);
    CardCreator.setVisible(true);
  } else {
     textfield2.setText("");
 textfield1.setText("");
    textfield1.setVisible(false); 
    textfield2.setVisible(false);
    CardCreator.setVisible(false);
  }



  //button(String t, int x, int y, int SX,int SY){

 
}



void keyPressed() {

}
