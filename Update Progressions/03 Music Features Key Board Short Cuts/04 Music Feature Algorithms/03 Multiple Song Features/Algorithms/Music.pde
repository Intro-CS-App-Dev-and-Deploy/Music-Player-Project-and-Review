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
  String soundPathway = upFolder + fslash + upFolder + fslash + upFolder + fslash + upFolder + fslash + upFolder + fslash + FreeWare_Music;
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
  testingMusic();
  //
  if ( key=='Q' || key=='q' ) exitProgram();
  if ( key==CODED || keyCode==ESC ) exitProgram();
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
// End Music Subprogram
