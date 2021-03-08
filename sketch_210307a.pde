
import java.util.ArrayList; 
String text="lol";
card card1= new card("1");
void setup(){
  
  
  size(800,450);
  
 }



void draw(){
  
  background(255);
  stroke(0);
  fill(0);
  text(text,100,100);




}



void keyPressed(){
  text=text+key;
  
  if(key==BACKSPACE){
    if(text.length() > 1){
   text=text.substring(0,text.length()-2); 
    }
  }
  
  }
