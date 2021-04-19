import java.util.Scanner; 
import java.io.*;
import java.io.PrintWriter;
import g4p_controls.*;
boolean createCard=false;
import java.util.ArrayList; 
int CardCounter=0;
PApplet pa=this;
Text text1= new Text("Front side", 225, 50, false);
Text text2= new Text("Back side", 225, 140, false);
card card1= new card(1);
Text tFront;
Text tBack;
card c;
GDropList testing;
CardStorageList All= new CardStorageList();
CardStorage cards;
CardStorage viewed;
keyRec FRec= new keyRec();
keyRec BRec= new keyRec();
Text text3= new Text("Back side", 225, 140, false);
int window=0;
int YCardStoragePosition=85;
int RandomCard=0;
CardPackFileWriter test; 
void setup() {


  size(800, 450, JAVA2D);
println(System.getProperty("java.version"));
  createGUI();
  textfield1.setVisible(false); 
  textfield2.setVisible(false);
  CardCreator.setVisible(false);
  button2.setVisible(false);
  button3.setVisible(false);
  button4.setVisible(false);
  CardStorage cards=new CardStorage("Default CardPack");
  cards.select();
textSize(10);
  
String [] pathname;
File f= new File("C:\\Users\\Awake\\Documents\\Processing\\sketch_210307a\\CardPack\\");
pathname=f.list();
for(String pathnames : pathname){
parseFile(pathnames);


}
println(sketchPath());
}


public void hi(GButton source, GEvent event) { //_CODE_:button7:466897:
  println("test");
} 
void draw() {

  background(255);
  stroke(0);
  fill(0);

if (window==7) {
  text("First Part",250,80);
textfield3.setVisible(true);
button11.setVisible(true);
 text("Blank",250,180);
 textfield4.setVisible(true); 
 text("Second Part",250,245);
   textfield5.setVisible(true); 
    
  }
else {
  
 textfield3.setVisible(false);
 textfield4.setVisible(false); 
   textfield5.setVisible(false); 
  button11.setVisible(false);
}





if (window==6) {
button9.setVisible(true);
button10.setVisible(true);    
    
  }
  else {
   
    button9.setVisible(false);
button10.setVisible(false);  
    
  }






  if (window==3) {
button8.setVisible(true);
    All.showGCBox();
    
  }
  else {
    button8.setVisible(false);
    
  }


  if (window==4) {
    text("Create New Card Pack", 300, 75, 100); 
   All.showGCBox(); 
    CreateCardPack.setVisible(true);
    CreateCardPackButton.setVisible(true);
  } else {

    CreateCardPack.setVisible(false);
    CreateCardPackButton.setVisible(false);
  }

  if (window==5) {

    All.getCardStorage().showCard(CardCounter);
    button2.setVisible(true);
    button3.setVisible(true);
    button4.setVisible(true);
  } else {

    button2.setVisible(false);
    button3.setVisible(false);
    button4.setVisible(false);
  }


  if (window==2) {

    textSize(10); 
    text("Select Card Pack to view", 300, 75, 100); 
    All.showGCBox(); 
 button6.setVisible(true);
  }
  else {
  
   button6.setVisible(false);
  
}


    if (window==1) {
      textSize(15); 
     All.showGCBox(); 
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

//println(window);

    //button(String t, int x, int y, int SX,int SY){
  }

void parseFile(String n) {

  
  
  int c=0;
CardStorage s=cards;
  BufferedReader reader = createReader("\\CardPack\\"+n+"\\");
  String line = null;
  try {
    while ((line = reader.readLine()) != null) {
     String[] nice=line.split("\\|");
     println(nice);
     if(c==0){
      
      s= new CardStorage(nice[0]);
     }
     
    if(c > 0){ 
      // tBack= new Text(textfield2.getText(),325,225,false);
 tFront= new Text(nice[1],Integer.parseInt(nice[2]),Integer.parseInt(nice[3]),false);
 tBack= new Text(nice[5],Integer.parseInt(nice[6]),Integer.parseInt(nice[7]),false);
 card cards= new card(Integer.parseInt(nice[0]));

 cards.addFront(tFront);
 cards.addBack(tBack);
      
      s.addCard(cards);
      
      
    }
     c++;
    }
    reader.close();
  } catch (IOException e) {
    e.printStackTrace();
  }
} 

  void keyPressed() {
  }
