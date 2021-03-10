
import java.util.ArrayList; 
String text="lol";

void setup(){
  
  
  size(800,450);
  
 }



void draw(){
  
  background(255);
  stroke(0);
  fill(0);
  text(text,100,100);

card card1= new card();
Text text1= new Text("text1",100,200);
Text text3= new Text("text3",300,200);
//button(String t, int x, int y, int SX,int SY){
  button button1= new button("hey",200,0,100,50);
  button1.show();
  button1.act();
card1.add(text1);
card1.add(text3);
card1.show();

println(mouseX,mouseY);
}



void keyPressed(){
  text=text+key;
  
  if(key==BACKSPACE){
    if(text.length() > 1){
   text=text.substring(0,text.length()-2); 
    }
  }
  
  }
