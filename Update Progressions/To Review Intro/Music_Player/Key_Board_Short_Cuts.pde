void keyPressedShortCuts() {
  //
  musicShortCuts();
  quitButtons();
  //
}//End keyPressedShortCuts
//
void musicShortCuts() {
  //Key Board Short Cuts for Music, use numbers
  //Hint: notice human numbering vs. computer numbering
  //Note: if(key=='1')song0.loop(0); will change to array & index introduction
  if ( key == '1' ) songs[0].loop(0); //.rewind() is included in .loop()
  if ( key == '2' ) songs[1].loop(0);
  if ( key == '3' ) songs[2].loop(0);
  if ( key == '4' ) songs[3].loop(0);
  if ( key == '5' ) songs[4].loop(0);
  if ( key == '6' ) songs[5].loop(0);
  if ( key == '7' ) songs[6].loop(0);
  if ( key == '8' ) songs[7].loop(0);
  //
  //Students to make these smarter
  //Separated into single songs and multiple songs
  //
  if ( key == 'P' || key=='p' ) playPause(); //teacher started
  //Note: for this Auto Play to Work, song must be playing
  if ( key == 'U' || key=='u' ) autoPlay(); //teacher started
  if ( key == 'M' || key=='m' ) mute(); //teacher started
  if ( key == 'S' || key=='s' ) stopSong(); //teacher started
  if ( key == 'F' || key=='f' ) fastForward(); //teacher started
  if ( key == 'R' || key=='r' ) fastRewind(); //teacher started
  if ( key == 'N' || key=='n' ) nextSong(); //psuedo code only
  if ( key == 'B' || key=='b' ) previousSong(); //psuedo code only
  if ( key == 'L' || key=='l' ) loopSong(); //loops current song infinitely
  if ( key == 'O' || key=='o' ) loopPlaylist(); //entire playlist
  if ( key == 'W' || key=='w' ) shufflePlaylist(); //shuffle
  if ( key == 'E' || key=='e' ) loopAndShuffle(); //Loop and Shuffle
}//End musicShortCuts
//
void quitButtons() {
  //Quit Button Key Board Shortcuts
  if ( key == 'Q' || key == 'q' ) {
    quitButtonCode();
  }
  if ( key == CODED && keyCode == ESC ) {
    quitButtonCode();
  }//End Quit Buttons
}//End quitButtons
//
void quitButtonCode() {
  soundEffects[1].loop(0); //only need partial file, use .play(int millis)
  //Visual Image or Text of Goodbye
  delay(3000); //alternate way of playing sound once
  exit();
}//End quitButtonCode
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
void autoPlayMusic() {
  //ERROR: ArrayListOutOfBounds
  if ( songs[currentSong].isPlaying()==false ) {
    currentSong++;
    songs[currentSong].play();
  }
}//End Auto Play Music
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
void nextSong() {
  //ERROR: ArrayListOutOfBounds
  //ERROR: currentSong++; plays two songs or more at once
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
  currentSong--;
}//End Previous Song
//
void loopSong() {
}//End Loop Song
//
void loopPlaylist() {
}//End Loop the Playlist
//
void shufflePlaylist() {
  //Play Random Song
}//End Shuffle the Playlist()
//
void loopAndShuffle() {
  //Student to finish
  //Hint: random() and casting, see Global Variables' currentSong declaration
}//End Loop And Shuffle
//

//End Key Board Short Cuts Sub Program
