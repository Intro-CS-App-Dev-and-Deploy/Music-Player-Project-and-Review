# Music Player
Static to Basic Objects, developing a Music Player either as a CS20-30 Review or CS10 Course Long Project

---

# Progressions short list
- Case Study of Music App or Music Buttons (Static or Pop-style Menu Item)
- Find MP3 Files, music & Sound Effects (You Tube Audio Library)
  - Able to use my downloaded examples
- Introduction and Review of Processing IDE, Processing Boilerplate
- Introduction and Review of Manager (Libraries & features, example code, various print resources related to code)
- Introduction to Minim Library (code within Processing, Minim Website and Documentation)
- Introduction to Variables: declaration, naming (camel & snake,), global & local, manipulation

- Question about Progression: does minim allow static programs to work?

- String Variables: pathways, files names and types, concatenation
- Console for inspection: print() & println() with character escapes
- Using Idea of Processing Boilerplate to inflate variables with specific music
- Able to name music-variable same as fileName but better to introduce playList as collection of songsNum (intro array)
- Verify Button Pressing uses a sound effect (keyPressed & mousePressed)
  - introduce released and different parts of the mouse
  - collectively called listeners, interrupts void draw() 
- Verify music will play with simple play button connected to last line in setup()
- Verify specific song will play with keyPressed and mousePressed
  - keyPressed: normal keys and keyCode
  - mousePressed: LEFT, RIGHT, CENTER, WHEEL, etc.
- Introduce MP3 metadata, what peices of metadata will be used
- Introduce NULL and Error catch related to single line IF, output empty String to CONSOLE
- Finish Loading Music by summarizing it into a TAB and linking it to the MAIN Program (i.e. subprogram repeats boilerplate for connections to MAIN)
- Algorithms for Music Features, prototyped in to keyPressed using Normal Keys
  -  Simple Single Song Play Buttons, as Case Studies
    - Describe in simple words and answer "what does this button do, how does it differ from other buttons
    - Play-Pause (remember, develop these buttons separately then combine them)
    - Stop
    - Mute
    - Fast Forward
    - Fast Rewind
  - Library Functions needed for Buttons Above
    - .isPlaying()
    - .isMuted()
    - .pause()
    - .rewind()
    - .play(), but Auto Play is better (see below)
    - .unmute()
    - .mute()
    - .skip(+/-milliSeconds)
  - Once code is IN keypressed() under different Normal Buttons, group code and create separate VOIDs to name the feature
  - Purpose: code is written once but accessed more than once
  - keyPressed() should only have references to VOIDs in Music TAB (Subprogram)



### Ideas
- advanced introductory: list of music files .mp3, as populated from meta data from .mp3 files (CAUTION: this is an impossible ask, can you explain why)

- Multiple Songs require change to array and index (computer tracks alpha numeric variable naming)

- Program Start in OS, Splash Screen to Enter, then Feature List
- Music Program can be a button or an Easter Egg hidden as a hoverover feature developed into every case study
- 

---

# Assessment
- Different Items to Grade, <a href="">Click Here when Available</a>
- List of Expected Prototyped Programs, <a href="">Click Here when Available</a>

Different Items to Grade
- Concatenation of Strings to form pathways and file names
- Population of all visual objects dependant on size() or fullScreen() to appWidth & appHeight
- Music Subprogram & Boilerplate connections from TAB to MAIN

- Naming of groups of code and connection to MAIN Program

Note about assessment
- Music Program or App Engine will contain all code
- Each Lesson is prototyped as a separate program

List of Prototyped Programs to be in corporated into Music Program or App Engine
- Loading Music and Sound Effects, verified with setup() code or very simple keyPressed(){} code
- Music Player Button Features

 ### Future Assignments to Check, when is unknown


---

# Purpose Long List (code & algorithms)


---

# Outline with internal Hyperlinks, per course


---

# Detailed Notes from Hyperlinks Above
- Consider creating different docs and folders

---

# Previous Notes to Move Above
- Assessment, paper and pencil: developer-level case study ( includes ```rect()``` ) and descriptions of information
- Assessment, CONSOLE and CANVAS: code illustrates above within time limit

What is a case study: image of a music player (or app engine)
- Google Rapid Prototyping (You Tube Video): https://www.youtube.com/watch?v=JMjozqJS44M

How do we use a Case Study: developer rectangles for information and display geometry ratios
- Order of paper and pencil vs. coding is optional, depends on group

While Developing the Paper and Pencil version of a Case Study, install the Minim Library to the Processing.org IDE
- Sketch / Add Library / Minim / Install

**CAUTION: for Static Programming Below**: part of introduction to Processing.org IDE
- Install Minim Library (optimal: other libraries and code examples)
- Ability to Read any .mp3 from folder
- Note: students must look-up code if another file

More Case Study Ideas for the Music and Sound Players, see Minim (https://code.compartmental.net/minim/)

### Any Course: introducing Processing.org PDE, variables, print | println, and character escapes
- Purpose: evaluate the contents of variables at different lines of execution
- Illustrate NULL, different values, need for CASTING, and Garbage Collection
- Mathematics: scaled dimension (variable), no code can be copied into different programs and easily changed

Assessment: algorithms of each type of button matching code

Must teach Files and Pathways to build autoreading of songs
- will not be developed and will need review

Use Static Programming to build required 2D Images for Music Buttons
- **KeyBoard Shortcuts ONLY:** with console only
- Sound Effect for User Action (use ```.loop(0)``` ), see You Tube Audio Library or Above for Freeware Files
- Play | Pause | Error Catch if at the end of a song
- Stop Button | Error for 
- Three Looping Functions: single song, infinite on single song, entire play list
- Mute
- Within a song: skip forward, skip reverse
- Building Arrays
- Next & Previous Buttons | Error Catch for Array out of Bounds

Note: these are taught with specific algorithms

Note: later this code will affect the CANVAS

### Intermediate and Advanced Only: Procedural Programming

Use Static (is this even possible) Programming to build Canvas Feedback from songs (Meta Data)

Note: must develop code about how to read Files and Pathways in Windows

Progressions
- Demonstrate how to verify song meta data in WINDOWS
- **Note:** verify with console but use CANVAS, no Display or Geometry Error Catching yet
- Current Position
- Total Length ( .length() )
- Title ( .title() )
- .author()
- .composer()
- .orchestra()
- .album()
- .disc()
- .publisher()
- .date()
- .copyright()
- .comment()
- .lyrics()
- .track()
- .genre()
- .encoded() //how a computer reads the file

### For Information  
Short List of Required Minim Library Functions
- .play() //Parameter is start of file in milliseconds, null is beginning of file
- .isPlaying() //Boolean
- .loop() //Parameter is number of repeats, then song plays one last time, null is infinite
- .isMuted()
- .mute()
- .unmute()
- .skip(1000); // Parameter is +- milliseconds
- .position()
- .length()
- .pause()
- .rewind()
- .title() //Meta Data Example

Additional Meta Data Functions
- *Note:* if .mp3 does not have meta data, use folder file name in it's place as default
- .fileName()
- .length()
- .author()
- .composer()
- .orchestra()
- .album()
- .disc()
- .publisher()
- .date()
- .copyright()
- .comment()
- .lyrics()
- .track()
- .genre()
- .encoded() //how a computer reads the file

---

## Any Course: periods and assessment for assembling sound effects and buttons into 
- Music Player App
- App Engine

Note: define Static and Dynamic using BRACES, debugging techniques
- BLUE Highlighting, knowing blocks of code
- CTRL-TAB, knowing WHITE Space

Reading and Writing Code, how to communicate to your teacher
- grouping code, using functions with descriptive variables makes code readable
- Single Line and Multiple line comments adds handle human reading when 

Assemble into the following Boilerplate

```Java
//Global Variables
//
void setup() {
  size(500, 400); //fullScreen(), displayWidth & displayHeight
  //Should declare landscape, portrait, or square
}
//
void draw() {}//End draw()
//
void mousePressed() {}//End mousePressed()
//
void keyPressed() {}//End keyPressed()
//
//End MAIN Program
//
```

### Ideas

Different parts of Processing IDE (color coded lines of code, debugger line, console, then dropdown menus)

Using Processing-JAVA's Spellchecker (colour coded key variables, functions, etc. & consistently named unique variables) & Atom.io's Spellchecker (dictionary for comments & consistent unique variables)
- i.e. variable initiation is yellow
- i.e. functions spelt correctly are blue

Initiating Variables and Population on same line V. after size()

## Advanced Only

Create OOP from Procedural App Engine

Begin to Develop Very basic Pong Game

Being to understand prototyping in MAIN vs. Encapsulated in Classes
- Constructor(), draw(), and supporting procedures 
- Computer attending to manipulation of all constructor variables (object knows variables and codes

---

# Any Course: Processing.pde HelloWorld

To Do: https://github.com/Intro-CS-App-Dev-and-Deploy/Hello-World
- Review different programs and progression of programs

### Ideas

How do you code to an unknown display?
CANVAS resembles coordinate plane (recalling legacy scanning electron gun of old school monitors)
- where do you start counting? (0,0), middle, corners, or somewhere else?

Key Variables, red colour

Difference between size() and fullScreen()
- size() might be bigger than display, must resize using appWidth and appHeight
- fullScreen() might run differently on different screens
- display geometry might be different but forced to fit 
- Android updates width and height by turning phone, so special algorithm in draw() might need attention

Introduces
- variables, strongly formatted: global, local, garbage collection, manipulation
- initiation, declaration, naming, and values
- example: char, String, int, long, float, double
- single line IFs
- visual data population based on display numbers
- BONUS question: how do primitive variable differ by memory length
- BONUS Question: how do you access the memory address on a hard drive (idea of size of shelf and content)
- Bonus Question: why is String capitalized? (Answer introduces coding method, OOP, in advanced computer science)

From Mathematics: ratios, fractions, and paperfolding

From Algorithms:
- Easiest Algorithm: make the app break when the wrong display orientation is attempted
- More difficult Algorithm: fix the app for the user

print("\n") & println() | println("\t")
- Note: able to find other Character escapes on Google Searching Java
( See: https://docs.oracle.com/javase/tutorial/java/data/characters.html )
- what a variable returns at different execution points
- i.e. Global rect() Variable before and after size() or fullScreen()
- Concatenation, Variables & Spaces: using ```=``` OR ```,```

Blast from the Past, before visual data at earlier grade levels: ASCII Art
- Able to Google
- uses println("\t")
- ASCII Values (or char & String) describe symbols
- CAUTION: different countries use different keyboard layouts (beyond spaces between keys), called QWERTY, AZERTY, DVORAK and QWERTZ
- Trivia: 104 keys is standard for WINDOWS operations

Note, Advanced Display, 3by3 Screen rect() population: recursive and non-recursive 

---

## Ideas for Above
- Hello World
- Geometry Checker: landscape, portrait, and square
- Display Checker: does the CANVAS fit in the Display, is the Canvas the same geometry as the screen, how can the appWidth and AppHeight be adjusted to help this ("turn your phone")
- Printing Text: More advanced Print Statements, like printArray() will be introduced with Drawing Text
- Assembling a Music Program with buttons and metadata OR App Engine (less concrete)
- Counting formulae: i.e. x+1 to x++ to x+=1, modulus, & noting x=+1
- operators (4), increment (1), decrement (1), all assignments operators (4), and modulo (modulus)
- Note: modulus is the mathematics' description for the symbol, modulo, that looks like a percent symbol. If understood as a fraction, the numerator has the modulo meaning
- Need for CASTING when using float vs. int (double v long)

Ideas:
- MP3 Metadata Populating Strings, Introduction to API Populating all Data Types, Constructors and toString()
- Reading number of items in a folder, advanced pathways and abstract pathways

Ideas
- Single Line IF: restrict execution of line
- Multi LIne IF
- Decision IF-Else, most of the time, sometimes
- Population IF, binary structure: Ternary Operator
- IF-ElseIF-Else
- Nested IFs, read in order and mimicked by Compound AND OR conditionals (see intro to buttons using rect() )
- Include as many IFs as needed
- Legacy: Cases (do not use these, architecture cannot handle many decisions)

---

# Progressions

---

# To Include

### Self Populating from Folder
```JAVA
//file = new File(dataPath("../../../../Musicxs/.mp3"));
//Absolute Path vs. relative path using getPath()
  File folder = new File("F:/My Documents/GitHub/Hello-World/Final-Project/Musicxs");
  File[] FileList = folder.listFiles();
  for (File file : FileList) {
    if (file.isFile()) {
      if (file.toString().endsWith(".mp3")) {
        System.out.println(file.getName().toLowerCase()); //Lists Files In Music Folder ending in ".mp3"
      }
    }
  }
//Use to count number of files in folder
//Use to self-populate music files loading
//Then use MetaData in .mp3 to get other information
```

See: https://github.com/Intro-CS-App-Dev-and-Deploy/App-Development/tree/main/Music%20Program/Prototyping%20Minim/Mutliple%20Songs%20with%20Arrays/01%20Mutli%20Song%20Load/Advanced%20Research%20and%20Library

---

## To Include: Introductory Progressions
- [] Case Study
- [] Pick sound effects and Music
- [] Load sound effects and Music to setup, include loop(0) to demo
- [] Explore .play(milliseconds) to make sound effect not repeat
- Come back to music player later
- [] 2D Music Buttons: list them all from above

---

Music Player Button Prototyping: https://github.com/Intro-CS-App-Dev-and-Deploy/Music-Player-Button-2D-Shapes-Prototyping

---
