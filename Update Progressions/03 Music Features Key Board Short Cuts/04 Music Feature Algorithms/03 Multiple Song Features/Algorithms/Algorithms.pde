//Libraries and Dependancies
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//
void setup() {
  musicLoadSetup();
} //End setup
//
void draw() {
  //println( millis() );
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
  //Single Song Features
  if ( key == 'P' || key=='p' ) playPause(); //teacher started
  
  if ( key == 'M' || key=='m' ) mute(); //teacher started
  if ( key == 'S' || key=='s' ) stopSong(); //teacher started
  if ( key == 'F' || key=='f' ) fastForward(); //teacher started
  if ( key == 'R' || key=='r' ) fastRewind(); //teacher started
  //
  //Play any song to Start
  //if ( key == 'W' || key=='w' ) shufflePlaylist(); //shuffle
  //
  //Functions that go between songs
  //if ( key == 'U' || key=='u' ) autoPlay(); //teacher started
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
void playPause()
{
  //Ask computer if the song is playing
  //Note: remember to use Auto Play
  //ERROR: song will not play if at the end
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) { //80% of the song
    songs[currentSong].rewind();
    songs[currentSong].play();
    //Remember, Auto Play is better b/c it plays the next song
  } else {
    //autoPlay(), is better here
    songs[currentSong].play(); //Interim solution
  }
}//End Play Pause
//
void mute()
{
  //MUTE, not PAUSE, only affects the speakers
  //Based on a question: is the song muted
  //ERROR: this MUTE Button only works when the song is playing
  //ERROR: user will spam mute if song is at end of file
  if ( songs[currentSong].isMuted() ) {
    songs[currentSong].unmute();
  } else if ( songs[currentSong].isMuted() && songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
    songs[currentSong].rewind(); //one solution
    songs[currentSong].unmute();
    //
    /* Other solutions
     - unmute the next song
     - show notification speakers are muted and song will not play
     */
  } else {
    songs[currentSong].mute(); //simple solution, contains two ERRORS, see above
  }
}//End Mute
//
void stopSong()
{
  //Based on a question: is the song playing
  //Hint: would this fix the ERROR of the MUTE Button
  //Note: STOP is actually afancy rewind, no ERRORS
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else {
    songs[currentSong].rewind();
  }
}//End Stop Song
//
void fastForward() {
  //Asks comptuer if the song is playing
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(1000); //parameter in milliseconds
}//End Fast Forward
//
void fastRewind() {
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(-1000); //parameter in milliseconds
}//End Fast Rewind
//
//End MAIN Program
