void loadMusic() {
  //
  minim = new Minim(this);
  //
  //Concatenation of Pathway + File Name
  String musicPathway = "../Music/"; //From Sketch to Music Folder
  String soundEffectPathway = "../Sound Effects/"; //From Sketch to Sound Effect Folder
  String grooveFileName = "groove.mp3";
  String eurekaFileName = "Eureka.mp3";
  String competitionFileName = "Beat_Your_Competition.mp3";
  String cyclesFileName = "Cycles.mp3";
  String ghostFileName = "Ghost_Walk.mp3";
  String newsRoomFileName = "Newsroom.mp3";
  String enginesFileName = "Start_Your_Engines.mp3";
  String simplestFileName = "The_Simplest.mp3";
  String stingFileName = "The_Simplest_Sting.mp3";
  String closeDoorFileName = "Wood_Door_Open_and_Close_Series.mp3";
  //Note: will change to Array and Index
  songs[0] = minim.loadFile( musicPathway + grooveFileName );
  songs[1] = minim.loadFile( musicPathway + eurekaFileName );
  songs[2] = minim.loadFile( musicPathway + competitionFileName );
  songs[3] = minim.loadFile( musicPathway + cyclesFileName);
  songs[4] = minim.loadFile( musicPathway + ghostFileName);
  songs[5] = minim.loadFile( musicPathway + newsRoomFileName);
  songs[6] = minim.loadFile( musicPathway + enginesFileName);
  songs[7] = minim.loadFile( musicPathway + simplestFileName);
  soundEffects[0] = minim.loadFile( soundEffectPathway + stingFileName );
  soundEffects[1] = minim.loadFile( soundEffectPathway + closeDoorFileName);
  //
  //println("Music Pathway is", musicPathway);
}//End loadMusic
