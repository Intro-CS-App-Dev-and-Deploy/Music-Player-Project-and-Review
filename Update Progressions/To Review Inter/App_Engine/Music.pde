//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2];
String pathway, grove, newsroom, string, door;
int currentSong=0;
Boolean autoPlayOn=false;
//
void setupMusic() {
  //
  minim = new Minim (this); //load from data directory, loadFile should also load from project folder, like loadImage
  //
  //Set the Directory or Pathway to the Music
  //Pathway: data / Music or Sound Effct Files
  //
  //Reminder: finish OS_Level Code to auto read pathway and files (See Operating System)
  //
  concatenationOfMusicFiles();
  songs[0] = minim.loadFile( pathway + grove );
  songs[1] = minim.loadFile( pathway + newsroom );
  soundEffects[0] = minim.loadFile( pathway + string );
  soundEffects[1] = minim.loadFile( pathway + door );
  //
} //End setupMusic
//
void drawMusic() {
  //Debugging in CONSOLE
  print("Current Sond Position:", songs[currentSong].position() );
  println("\tEnd of Song:", songs[currentSong].length() );
  //
  autoPlayMusic();
  //
}//End drawMusic
//
void keyPressedMusic() {
  //Music Key Board Short Cuts
  //
  if ( key == 'm' || key == 'M' ) {
    mute();
  }
  //
  //Forward & Reverse Skip
  if ( key == 'f' || key == 'F' ) {
    //Skips FORWARD to end of song
    //ERROR: if at end, plays beginning
    songs[currentSong].skip(1000); //parameter in milliseconds
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
    //Student to Finish
    //ERROR Catch: if end of song, then next song
    //Student to finish Conditional
  } //End Forward
  if ( key == 'r' || key == 'R' ) {
    //Spamming R means start playing at beginning of song
    songs[currentSong].skip(-1000); //parameter in milliseconds
  }//End Reverse
  //
  //Single Loop, starter function
  //if (key == '1') songs[currentSong].loop(1); //ERROR: immediately restarts song
  if ( key == '1' ) {
    //Finish Playing current song, then replay once
    delay( songs[currentSong].length() - songs[currentSong].position() );
    //ERROR: delay stops all player functions, computer doesn't recognize if
    //       song is playing
    songs[currentSong].loop(0);
  } //End Single Loop
  //
  //Loop Infinte Times
  if ( key <= '9' && key != '1' ) {
    //Finish Playing current song, then replay once
    delay( songs[currentSong].length() - songs[currentSong].position() );
    //ERROR: delay stops all player functions, computer doesn't recognize if
    //       song is playing
    songs[currentSong].loop(-1); //parameter is empty or -1
  } //End Single Loop
  //
  //Stop
  if ( key == 's' || key == 'S' ) { //STOP Button
    /*Note: possible smarter STOP Buttons
     - include soft "PAUSE" for first 15 seconds of STOP
     - include auto previous & next track if STOP at beginning or end of file
     */
    if ( songs[currentSong].isPlaying() ) {
      songs[currentSong].pause();
      songs[currentSong].rewind();
    } else {
      songs[currentSong].rewind();
    }
  }//End Stop
  //
  //Play-Pause
  if ( key == 'p' || key == 'P' ) { //Play-Pause Button
    if ( songs[currentSong].isPlaying() ) {
      songs[currentSong].pause();
    } else if (songs[currentSong].position() >= songs[currentSong].length()*4/5) {
      // Student to Finish
      // .pause(), .rewind(), then cue next song
      //CAUTION: without code, this conditional will not do anything
    } else {
      songs[currentSong].play(); //no auto rewind like loop()
    }
  } //End Play-Pause
  //
  //Autoplay Button
  if ( key == 'o' || key == 'O'  ) {
    if ( autoPlayOn == false ) {
      autoPlayOn = true;
    } else {
      autoPlayOn = false;
    }
  }//End Autoplay
  //
  //Next Song Button
  //Note: very simple NEXT Button, needs to be smarter
  if ( key == 'n' || key =='N' ) {
    if ( songs[currentSong].isPlaying() ) {
      //Empty IF
      //If you code a next button to be active when a song is playing ...
      //Must include .pause()
      //If the current song is playing, then pressing the next button
      //play the next song
      //Must include .play()
    } else if ( currentSong == songs.length - 1 ) { //ERROR Catch: ArrayOutOfBounds
      songs[currentSong].rewind();
      currentSong = songs.length - songs.length; //Intention is Zero, beginning of play list
    } else {
      songs[currentSong].rewind();
      currentSong++;
      //THROWS ArrayOutOfBounds Error
    }
  } //End Next Song Button
  //
  //Previous Song Button, Back Button
  //Students to develop, based on next button
  //if ( key == 'b' || key =='B' ) {} //End Previous Song Button or Back Button
  //
}//End keyPressedMusic
//
void mousePressedMusic() {
}//End mousePressedMusic
//
void concatenationOfMusicFiles() {
  pathway = "data/";
  grove = "groove.mp3";
  newsroom = "Newsroom.mp3";
  string = "The_Simplest_Sting.mp3";
  door = "Wood_Door_Open_and_Close_Series.mp3";
}//End concatenation
//
void autoPlayMusic() {
  if ( autoPlayOn ) {
    //if () {} if else () {} else {}
    //Ex#1: .position() >= .length(), then rewind(), currentSong+=1, .play()
    //Ex#2: .isPlaying(), when false rewind(), currentSong+=1, .play()
  }
}//End Auto Play Music
//
void mute() {
  //Mute Button, not PAUSE, only affect speakers
  //ERROR: this MUTE Button only works when song is playing
  //ERROR Fix: unmute or rewind when song is not playing (i.e. unmute next song)
  if ( songs[currentSong].isMuted() ) {
    songs[currentSong].unmute();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
    //Students to finish SMARTER Mute Button
    //ERROR: music player breaks if song finishes
    /* Ideas
     - rewind the song
     - play the next song automatically
     - play of notification to choose the next song
     */
    songs[currentSong].rewind(); //simple solution, contains ERROR
  } else {
    songs[currentSong].mute();
  }
}//End Mute
//
//
//End Music SubProgram
