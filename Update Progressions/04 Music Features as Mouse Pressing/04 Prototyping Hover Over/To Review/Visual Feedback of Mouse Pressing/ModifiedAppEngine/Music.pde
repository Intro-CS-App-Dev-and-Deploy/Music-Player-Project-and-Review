//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2];
String pathway, grove, newsroom, string, door;
int currentSong=0;
Boolean autoPlayOn=false;
Boolean playOn=false;
//
float buttonSide, spaceWidth, spaceHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth;
float playX, playY, playX1, playY1, playX2, playY2, playX3, playY3;
float stopX, stopY, muteX, muteY, loopIX, loopIY;
float ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A;
float ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B;
float rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A;
float rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B;
float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3, nextXR2, nextYR2, nextWidth;
float prevX1, prevY1, prevX2, prevY2, prevX3, prevY3, prevXR, prevYR, prevWidth;
float rrX, rrY, nextX, nextY, prevX, prevY, loop1X, loop1Y;
float loopPlaylistX, loopPlaylistY;
//
color defaultWhite=#FFFFFF, red=#FF0000, green=#00FF00; //Note: colours for nightmode
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
  autoPlayMusic(); //See autoPlay()
  //
  /*Note: draw the pause button first, in the middle
   All other buttons are drawn around it
   All pseudocode starts like rect( X, Y, Width, Height )
   */
  //
  //Confirming Local Variable Center X & Y garbage collected from setup()
  //print("Confirming Center X:", centerX);
  //print("/t Confirming Center Y:", centerY);
  //println("/t Confirming Button Position Couter:", buttonPosition);
  //
  //Button Space
  //rect( spaceX, spaceY, spaceWidth, buttonSide );
  //rect( spaceX, spaceY, spaceHeight, buttonSide );
  //
  //Stop Button
  rect( stopX, stopY, buttonSide, buttonSide ); //Layout????
  //rect( stopX, stopY, buttonSide, buttonSide ); //Square shape
  //
  //Pause Button
  //rect( pauseX1, pauseY1, buttonSide, buttonSide ); //Layout
  rect( pauseX1, pauseY1, pauseWidth, buttonSide );
  rect( pauseX2, pauseY2, pauseWidth, buttonSide );
  //
  //Play Button
  //rect( playX, playY, buttonSide, buttonSide ); //Layout
  if ( playOn==true ) {fill(green);} else {fill(defaultWhite);};
  if ( mouseX>=playX && mouseX<=playX+buttonSide && mouseY>=playY && mouseY<=playY+buttonSide ) fill(red);
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  fill(defaultWhite);
  //
  //MUTE Button
  rect( muteX, muteY, buttonSide, buttonSide ); //Layout
  //Students to develop
  //
  //Fast Forward in the Song
  //rect( ffX, ffY, buttonSide, buttonSide ); //Layout
  triangle( ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A );
  triangle( ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B );
  //
  //Reverse in the Song
  //rect( rrX, rrY, buttonSide, buttonSide ); //Layout
  triangle( rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A );
  triangle( rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B );
  //
  //Next Button, skip file
  //rect( nextX, nextY, buttonSide, buttonSide ); //Layout
  triangle( nextX1, nextY1, nextX2, nextY2, nextX3, nextY3 );
  rect( nextXR2, nextYR2, nextWidth, buttonSide );
  //
  //Previous Button
  //rect( prevX, prevY, buttonSide, buttonSide ); //Layout
  triangle( prevX1, prevY1, prevX2, prevY2, prevX3, prevY3 );
  rect( prevXR, prevYR, prevWidth, buttonSide );
  //
  //Loop the Song Once
  //Students to Develop
  rect( loop1X, loop1Y, buttonSide, buttonSide ); //Layout
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //triangle( loop1X1, loop1Y1, loop1X2, loop1Y2, loop1X3, loop1Y3 );
  //
  //Loop the Song Infinitely
  //Students to Develop
  rect( loopIX, loopIY, buttonSide, buttonSide ); //Layout
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //triangle( loopIX1, loopIY1, loopIX2, loopIY2, loopIX3, loopIY3 );
  //
  //Loop the Playlist (infinitely)
  //Students to Develop
  rect( loopPlaylistX, loopPlaylistY, buttonSide, buttonSide ); //Layout
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //triangle( loopPlaylistX1, loopPlaylistY1, loopPlaylistX2, loopPlaylistY2, loopPlaylistX3, loopPlaylistY3 );
  //
  //OPTINAL Shuffle
  //rect( shuffleX, shuffleY, buttonSide, buttonSide ); //Layout
  //2-D Shapes
  //
}//End drawMusic
//
void keyPressedMusic() {
  //Music Key Board Short Cuts
  if ( key == 'U' || key=='u' ) autoPlay(); //teacher started
  if ( key == 'P' || key=='p' ) playPause(); //teacher started
  if ( key == 'M' || key=='m' ) mute(); //teacher started
  if ( key == 'S' || key=='s' ) stopSong(); //teacher started
  if ( key == 'F' || key=='f' ) fastForward(); //teacher started
  if ( key == 'R' || key=='r' ) fastRewind(); //teacher started
  if ( key == 'N' || key=='n' ) nextSong(); //teacher started
  if ( key == 'B' || key=='b' ) previousSong(); //See Next Button, student finishes Previous Button
  if ( key == 'L' || key=='l' ) loopSongOnce(); //loops current song once
  if ( key == 'O' || key=='o' ) loopSong(); //loops current song infinitely
  if ( key == 'K' || key=='k' ) loopPlaylist(); //entire playlist
  if ( key == 'W' || key=='w' ) shufflePlaylist(); //shuffle
  if ( key == 'E' || key=='e' ) loopAndShuffle(); //Loop and Shuffle
  //
}//End keyPressedMusic
//
void mousePressedMusic() {
  //
  //Mouse Pressing Repeats Key Board Short Cuts
  //Uses Single Line IFs to access Keyboard Short Cut Code
  //
  /* Note: following line sets up all mousePressed conditionals
   mouseX>= && mouseX<= && mouseY>= && mouseY<=
   */
  if ( mouseX>=playX && mouseX<=playX+buttonSide && mouseY>=playY && mouseY<=playY+buttonSide ) playPause();
  //
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
/* Note: Auto Play Music and Auto Play work together
 - Auto Play Music is in draw()
 - Auto Play is connected to keyPressed and Mouse Pressed
 */
void autoPlayMusic() {
  //Note: plays one song, then the next automatically
  //Asks the computer if a song is playing, continually
  //When current song finishes, it rewinds current song and plays the next song
  //
  if ( autoPlayOn ) {
    //if () {} if else () {} else {}
    //Ex#1: .position() >= .length(), then rewind(), currentSong+=1, .play()
    //Ex#2: .isPlaying(), when false rewind(), currentSong+=1, .play()
  }
} //End Auto Play Music
//
void autoPlay() { //See autoPlayMusic()
  if ( autoPlayOn == false ) {
    autoPlayOn = true;
    playOn=true;
  } else {
    autoPlayOn = false;
    playOn=false;
  }
}//End Auto Play
//
void playPause()
{
  //Ask computer if the song is playing
  //Note: remember to use Auto Play
  //ERROR: song will not play if at the end
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    playOn=false;
  } else if (songs[currentSong].position() >= songs[currentSong].length()*4/5) { //80% of the song
    // Student to Finish
    // .pause(), .rewind(), then cue next song
    // Remember, Auto Play is better b/c it plays the next song
    // CAUTION: without code, this conditional will not do anything
  } else {
    //autoPlay(), is better here
    songs[currentSong].play(); //Interim solution
    playOn=true;
  }
} //End Play-Pause
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
void stopSong() {
  //Based on a question: is the song playing
  //Hint: would this fix the ERROR of the MUTE Button
  //Note: STOP is actually afancy rewind, no ERRORS
  //
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
}//End Stop Song
//
/* Note: Fast Forward and Fast Reverse and Be Rewritten into Method
 - procedure that passes parameter
 - parameter passed can be +- numbers
 - built on different ideas of timer
 - one idea: count passes of draw() that equals number of seconds (60 times per second), not exact
 - another idea: use OS Clock to time ??? Number of seconds, exact value using crystal on motherboard
 */
void fastForward()
{
  //Skips FORWARD to end of song
  //ERROR: if at end, plays beginning
  songs[currentSong].skip(1000); //parameter in milliseconds
  if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
    //Student to Finish
    //ERROR Catch: if end of song, then next song
    //Student to finish Conditional
  }
} //End Fast Forward
//
void fastRewind()
{
  //Spamming fastRewind means start playing at beginning of song & then previous song
  songs[currentSong].skip(-1000); //parameter in milliseconds
  //
}//End Fast Rewind
//
void nextSong() { //Teacher to Demo, Previous Button Student to Copy Concept
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
}//End Next Song
//
void previousSong() {
}//End Previous Song
//
/* Note: Loop Song Once and Loop Song Infitinely can be written into method'
 - see notes on Fast Forward and Fast Rewind
 - similar issue
 */
//
void loopSongOnce()
{
  //songs[currentSong].loop(1); //ERROR: immediately restarts song
  //
  //Finish Playing current song, then replay once
  delay( songs[currentSong].length() - songs[currentSong].position() );
  songs[currentSong].loop(0);
  /*ERROR: delay stops all player functions,
   computer doesn't recognize if
   song is playing
   */
} //End Loop Song Once
//
void loopSong()
{
  //songs[currentSong].loop(-1); //ERROR: immediately restarts song
  //
  //Finish Playing current song, then replay once
  delay( songs[currentSong].length() - songs[currentSong].position() );
  songs[currentSong].loop(-1); //parameter is empty or -1
  /*ERROR: delay stops all player functions,
   computer doesn't recognize if
   song is playing
   */
}//End Loop Song
//
void loopPlaylist() {
  //Student to Complete
  //Must answer: how does this differ from Auto Play
}//End
//
void shufflePlaylist() {
  //Student to Complete
}//End
//
void loopAndShuffle() {
  //Student to Complete
}//End
//
//End Music SubProgram
