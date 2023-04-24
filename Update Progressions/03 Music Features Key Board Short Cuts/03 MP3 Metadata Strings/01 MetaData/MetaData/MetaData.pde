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
  //Unique size(), this program only
  size(512, 256, P2D);
  //
  //Unique Text Code, this program only
  textFont(createFont("Serif", 12)); //simple text starting code, refer to how text is usually started, uses default font already installed
  //
  //For Prototyping, print all information to the console first
  //Verifying Meta Data, 18 println's
  println( "File Name: ", song0MetaData.fileName() );
  println( "Song Length (in milliseconds): ", song0MetaData.length() );
  println( "Song Length (in seconds): ", song0MetaData.length()/1000 );
  println( "Song Length (in minutes & seconds): ", (song0MetaData.length()/1000)/60, " minute", (song0MetaData.length()/1000)-((song0MetaData.length()/1000)/60 * 60), " seconds" );
  println( "Song Title: ", song0MetaData.title() );
  println( "Author: ", song0MetaData.author() ); //Song Writer or Performer
  println( "Composer: ", song0MetaData.composer() ); //Song Writer
  println( "Orchestra: ", song0MetaData.orchestra() );
  println( "Album: ", song0MetaData.album() );
  println( "Disk: ", song0MetaData.disc() );
  println( "Publisher: ", song0MetaData.publisher() );
  println( "Date Release: ", song0MetaData.date() );
  println( "Copyright: ", song0MetaData.copyright() );
  println( "Comment: ", song0MetaData.comment() );
  println( "Lyrics: ", song0MetaData.lyrics() );
  println( "Track: ", song0MetaData.track() );
  println( "Genre: ", song0MetaData.genre() );
  println( "Encoded: ", song0MetaData.encoded() ); //how a computer reads the file
} // End Setup

void draw() {
  background(0);
  int yi = 15;
  int ys = 25, y = ys; //Two Variables
  text("File Name: " + song0MetaData.fileName(), 5, y);
  text("Length (in milliseconds): " + song0MetaData.length(), 5, y+=yi);
  text("Title: " + song0MetaData.title(), 5, y+=yi);
  text("Author: " + song0MetaData.author(), 5, y+=yi);
  text("Album: " + song0MetaData.album(), 5, y+=yi);
  text("Date: " + song0MetaData.date(), 5, y+=yi);
  text("Comment: " + song0MetaData.comment(), 5, y+=yi);
  text("Lyrics: " + song0MetaData.lyrics(), 5, y+=yi );
  text("Track: " + song0MetaData.track(), 5, y+=yi);
  text("Genre: " + song0MetaData.genre(), 5, y+=yi);
  text("Copyright: " + song0MetaData.copyright(), 5, y+=yi);
  text("Disc: " + song0MetaData.disc(), 5, y+=yi);
  text("Composer: " + song0MetaData.composer(), 5, y+=yi);
  text("Orchestra: " + song0MetaData.orchestra(), 5, y+=yi);
  text("Publisher: " + song0MetaData.publisher(), 5, y+=yi);
  text("Encoded: " + song0MetaData.encoded(), 5, y+=yi);
} // End draw
//
void keyPressed() {
  if (key == 'p' || key == 'P') {
    if ( song0.isPlaying() ) {
      song0.pause();
    } else if ( song0.position() >= song0.length()-2000 ) {
      song0.rewind();
      song0.play();
    } else {
      song0.play();
    }
  }
} //End keyPressed
//
void mousePressed() {
} // End mousePressed
//
// End MAIN Program
