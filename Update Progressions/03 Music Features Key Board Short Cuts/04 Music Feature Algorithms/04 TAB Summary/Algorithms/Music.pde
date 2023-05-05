//Global Variables
Minim minim;
int numberOfSongs = 8; //Depends on number of files
// Pre-array: AudioPlayer song0, song1, song2, song3, song4, song5, song6, song7;
AudioPlayer[] songs = new AudioPlayer[numberOfSongs]; //Computer Numbering, not human numbering
int numberOfSoundEffects = 2;
// Pre-array: AudioPlayer soundEffect0, soundEffect1;
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
//
int currentSong = 0; //Starts playlist from first song
//
void musicLoadSetup() {
  char fslash = '/';
  String upFolder = "..";
  String FreeWare_Music = "FreeWare Music";
  String MusicDownload = "MusicDownload";
  String SoundEffect = "SoundEffect";
  String groove = "groove";
  String beat_Your_Competition = "Beat_Your_Competition";
  String cycles = "Cycles";
  String eureka = "Eureka";
  String ghost_Walk = "Ghost_Walk";
  String newsroom = "Newsroom";
  String start_Your_Engines = "Start_Your_Engines";
  String the_Simplest = "The_Simplest";
  String CarDoorClosing = "CarDoorClosing";
  String The_Simplest_Sting = "The_Simplest_Sting";
  char dereferencer = '.';
  String fileExtension = "mp3";
  //
  String soundPathway = upFolder + fslash + upFolder + fslash + upFolder + fslash + upFolder + fslash + upFolder + fslash + upFolder + fslash + FreeWare_Music;
  String musicPathway = soundPathway + fslash + MusicDownload;
  String soundEffectPathway = soundPathway + fslash + SoundEffect;
  //Inspect Variable
  //println (musicPathway);
  //println (soundEffectPathway);
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  //
  //Building Global Variables from Local Variables, some information does not need to be remembered
  soundEffects[0] = minim.loadFile( soundEffectPathway + fslash + CarDoorClosing + dereferencer + fileExtension );
  soundEffects[1] = minim.loadFile( soundEffectPathway + fslash + The_Simplest_Sting + dereferencer + fileExtension );
  //
  songs[0] = minim.loadFile( musicPathway + fslash + groove + dereferencer + fileExtension ); //able to pass absolute path, file name & extension, and URL
  songs[1] = minim.loadFile( musicPathway + fslash + beat_Your_Competition + dereferencer + fileExtension );
  songs[2] = minim.loadFile( musicPathway + fslash + cycles + dereferencer + fileExtension );
  songs[3] = minim.loadFile( musicPathway + fslash + eureka + dereferencer + fileExtension );
  songs[4] = minim.loadFile( musicPathway + fslash + ghost_Walk + dereferencer + fileExtension );
  songs[5] = minim.loadFile( musicPathway + fslash + newsroom + dereferencer + fileExtension );
  songs[6] = minim.loadFile( musicPathway + fslash + start_Your_Engines + dereferencer + fileExtension );
  songs[7] = minim.loadFile( musicPathway + fslash + the_Simplest + dereferencer + fileExtension );
} //End Music Load in Setup
//
void musicFeaturesKeyPressed() {
  //
  keyBoardFeedBack();
  //
  testingMusic();
  //
  if ( key=='Q' || key=='q' ) exitProgram();
  if ( key==CODED || keyCode==ESC ) exitProgram();
  //
  //Students to make these smarter
  //Separated into single songs and multiple songs
  //
  if ( key == 'P' || key=='p' ) playPause(); //teacher started
  if ( key == 'M' || key=='m' ) mute(); //teacher started
  if ( key == 'S' || key=='s' ) stopSong(); //teacher started
  if ( key == 'F' || key=='f' ) fastForward(); //teacher started
  if ( key == 'R' || key=='r' ) fastRewind(); //teacher started
  //
  //Play any song to Start
  if ( key == 'K' || key=='k' ) shuffleCurentSong(); //shuffle
  //
  //Functions that go between songs
  if ( key == 'U' || key=='u' ) autoPlay(); //teacher started
  //Note: for this Auto Play to Work, song must be playing
  //
  if ( key == 'N' || key=='n' ) nextSong(); //psuedo code only
  if ( key == 'B' || key=='b' ) previousSong(); //psuedo code only
  if ( key == 'L' || key=='l' ) loopSong(); //loops current song infinitely
  if ( key == 'O' || key=='o' ) loopPlaylist(); //entire playlist
  if ( key == 'E' || key=='e' ) loopAndShuffle(); //Loop and Shuffle
  //
}//End Music Features Key Pressed
//
void musicFeaturesMousePressed() {
} //End Music Features Mouse Pressed
//
void exitProgram() {
  soundEffects[0].loop(0); // Exit Sound
  delay(2800); //See draw() to understand time in milliseconds
  exit();
}//End Exit Program
//
void keyBoardFeedBack() {
  soundEffects[1].loop(0); // Auditory Keyboard Feedback
  delay(4000); //See draw() to understand time in milliseconds
  soundEffects[1].pause();
  soundEffects[1].rewind();
} //End Key Board Feed Back
//
void testingMusic() {
  // Testing All Songs
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
} //End Testing Music
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
void shuffleCurentSong() {
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
    randomCurrentSong(); //See VOID Below
    songs[currentSong].play();
  } else {
    songs[currentSong].rewind();
    currentSong = int ( random( numberOfSongs-1 ) ); //Starts playlist from random song
    songs[currentSong].play();
  }
} //End Shuffle Play List
void randomCurrentSong() {
  currentSong = int ( random( numberOfSongs-1 ) ); //Starts playlist from random song
} //End Random Current Song
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
// End Music Subprogram
