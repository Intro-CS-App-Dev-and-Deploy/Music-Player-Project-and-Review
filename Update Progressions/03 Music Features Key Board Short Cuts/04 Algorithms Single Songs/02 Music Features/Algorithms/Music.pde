//Global Variables
Minim minim;
int numberOfSongs = 8; //Depends on number of files
AudioPlayer[] songs = new AudioPlayer[numberOfSongs]; //Computer Numbering, not human numbering
int numberOfSoundEffects = 2;
AudioPlayer soundEffect0, soundEffect1;
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
  String soundPathway = upFolder + fslash + upFolder + fslash + upFolder + fslash + upFolder + fslash + FreeWare_Music;
  String musicPathway = soundPathway + fslash + MusicDownload;
  String soundEffectPathway = soundPathway + fslash + SoundEffect;
  //Inspect Variable
  //println (musicPathway);
  //println (soundEffectPathway);
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  //
  //Building Global Variables from Local Variables, some information does not need to be remembered
  soundEffect0 = minim.loadFile( soundEffectPathway + fslash + CarDoorClosing + dereferencer + fileExtension );
  soundEffect1 = minim.loadFile( soundEffectPathway + fslash + The_Simplest_Sting + dereferencer + fileExtension );
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
// End Music Subprogram
