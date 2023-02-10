/* CAUTION and Notes
 1. This code will cause the array songs to be null sometimes. This must be error checked
 2. Files must be dragged and dropped into the IDE for a DATA Folder to be created. Thus, Processing-JAVA recognises these
 */
//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
String path = new File("").getAbsolutePath(); //Exported Program
//CAUTION: GitHub must be linked to the C-Drive instead of FS ... This might need a lesson
String directory = "C:/Users/mmercer/Documents/GitHub/Sandbox-App-Engine-Reivew-P3/App_Engine"; //Not Exported
String data = "/data"; //automatic folder created by Processing.org JAVA for all text, image, music, etc files
//Reminder: \n is a character escape, so pathway must have forward slashes
//
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[16]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
void setup() {
  //
  minim = new Minim (this); //load from data directory, loadFile should also load from project folder, like loadImage
  //
  //Start to list where the processing.exe is located
  File anyDirectory = new File(path); //Used when exported
  println ("Exported Directory", anyDirectory);
  File[] FileListAnyDirectory = anyDirectory.listFiles();
  printArray(FileListAnyDirectory);
  println("Items in Exported Folder:", FileListAnyDirectory.length);
  //
  //CAUTION: this needs to be updated to amend the path into data
  //See Below
  //
  int i = 0; //songs index
  for (File file : FileListAnyDirectory) {
    if ( file.isFile() ) {
      if ( file.toString().endsWith(".mp3") ) {
        println("Any Directory is working");
        songs[i] = minim.loadFile( file.getName() );
        i = i + 1;
      }
    }
  }
  //
  //When Prototyping, songs is not loaded from anyDirectory ... but the GitHub Project folder
  //The order of lines executed and varaibles takes an algorithm to understand
  //Start to list the files where the Sketch is located
  File githubDirectory = new File(directory); //Used when prototyping
  println ("Prototyping Directory", githubDirectory);
  File[] FileListGitHubDir = githubDirectory.listFiles();
  printArray(FileListGitHubDir);
  println("Items in Prototyped Folder:", FileListGitHubDir.length);
  //
  String directoryData = directory + data;
  File githubDirData = new File(directoryData);
  println ("Prototyping Directory into DATA Folder", githubDirData);
  File[] FileListGithubDirData = githubDirData.listFiles();
  printArray(FileListGithubDirData);
  println("Items in Prototyped Folder:", FileListGithubDirData.length);
  //
  //Continue Here
  //Might need to change copy file
  //
  if ( songs[0] == null ) {
    printArray(FileListGitHubDir);
    println("Items in Prototyped Folder:", FileListGitHubDir.length);
    for ( File file : FileListGitHubDir ) {
      if ( file.isFile() ) {
        if ( file.toString().endsWith("_sound.mp3") ) {
          println("File Name sound.mp3 only", file.getName() );
          songs[i] = minim.loadFile(file.getName());
          i+=1;
        } else if ( file.toString().endsWith(".mp3") ) {
          println("File Name.mp3 only", file.getName() );
          songs[i] = minim.loadFile(file.getName());
          i+=1;
        }
      }
    }
  } //Catch when Pathway NULL, not exported
  songs[0].loop(0); //Change the index manually
}//End setup
//
void draw() {
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program (Driver)
