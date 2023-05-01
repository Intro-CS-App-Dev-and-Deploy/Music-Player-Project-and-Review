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
  //Functions that go between songs
  if ( key == 'U' || key=='u' ) autoPlay(); //teacher started
  //Note: for this Auto Play to Work, song must be playing
  //if ( key == 'N' || key=='n' ) nextSong(); //psuedo code only
  //if ( key == 'B' || key=='b' ) previousSong(); //psuedo code only
  //if ( key == 'L' || key=='l' ) loopSong(); //loops current song infinitely
  //if ( key == 'O' || key=='o' ) loopPlaylist(); //entire playlist
  //if ( key == 'E' || key=='e' ) loopAndShuffle(); //Loop and Shuffle
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
/* Note: must define a difference between auto play and loop playlist
 */
void autoPlay() {
  //Note: plays one song, then the next automatically
  //Asks the computer if a song is playing, continually
  //When current song finishes, it rewinds current song and plays the next song
  //
  /*ERROR: autoplay never stops the song if it is enabled
   - once the song stops, or by pressing STOP
   - next song will start
   - might even start the next song at the same time as the current song
   */
  if ( autoPlayON==false ) {
    autoPlayON=true;
  } else {
    autoPlayON=false;
    songs[currentSong].pause(); //enables play to continue when auto play is turned off
    //songs[currentSong].rewind();
  }
}//End AutoPlay
void autoPlayMusic() { //for draw()
  //ERROR: doesn't play first song
  //ERROR: ArrayListOutOfBounds
  if ( songs[currentSong].isPlaying()==false ) {
    currentSong++;
    songs[currentSong].play();
  }
}//End Auto Play Music
//
//End MAIN Program
