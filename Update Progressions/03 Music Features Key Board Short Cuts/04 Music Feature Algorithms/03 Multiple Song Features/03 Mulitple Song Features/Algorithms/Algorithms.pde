//Libraries and Dependancies
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Boolean autoPlayON=false;
//
void setup() {
  musicLoadSetup();
} //End setup
//
void draw() {
  //println( millis() );
  if ( autoPlayON==true ) autoPlayMusic();
} //End draw
//
void keyPressed() {
  soundEffects[1].loop(0); // Auditory Keyboard Feedback
  delay(4000); //See draw() to understand time in milliseconds
  soundEffects[1].pause();
  soundEffects[1].rewind();
  //
  musicFeaturesKeyPressed();
  //
  //Students to make these smarter
  //Separated into single songs and multiple songs
  //
  if ( key == 'N' || key=='n' ) nextSong(); //psuedo code only
  if ( key == 'B' || key=='b' ) previousSong(); //psuedo code only
  if ( key == 'L' || key=='l' ) loopSong(); //loops current song infinitely
  if ( key == 'O' || key=='o' ) loopPlaylist(); //entire playlist
  if ( key == 'E' || key=='e' ) loopAndShuffle(); //Loop and Shuffle
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
void nextSong() {
  //ERROR: ArrayListOutOfBounds
  //ERROR: currentSong++; plays two songs or more at once
  //NOTE: currentSong++ is same as currentSong=currentSong+1
  //NOTE: currentSong++ is same as currentSong+=1
  if ( songs[currentSong].isPlaying() ) {
    //Students to finish
    //Current Song: .pause(), .rewind()
    //Next Song: currentSong++
    //Now: DELAY-1-Second, .play()
  } else if (currentSong >= songs.length-1 ) {
    currentSong = 0;
  } else {
    songs[currentSong].rewind();
    currentSong++;
  }
}//End Next Song
//
void previousSong() {
  //ERROR: ArrayListOutOfBounds
  //Note: see nextSong to develop code for previousSong
  currentSong--;
}//End Previous Song
//
void loopSong() {
}//End Loop Song
//
void loopPlaylist() {
}//End Loop the Playlist
//
void loopAndShuffle() {
  //Student to finish
  //Hint: random() and casting, see Global Variables' currentSong declaration
}//End Loop And Shuffle
//
//End MAIN Program
