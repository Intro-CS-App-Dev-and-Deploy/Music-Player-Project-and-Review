# Music Player
Static to Basic Objects, developing a Music Player either as a CS20-30 Review or CS10 Course Long Project

Applications of Music Program: promoted by a simple website hosted on GitHub (HTML & CSS, or JavaScript DOM)
- [] Drawing App, will be a lesson
- [] Celebration Card, not a lesson but can be exported as a computer app and downloaded by anyone

Example To Do List
- [] List item
- [x] checked item
- <del> [x] deleted item </del>

Purpose of Music Player in CS20 & CS30: app engine with subprograms and ability for new app to play music and sound effects

Applications of App Engine
- Weather App
- Tic Tac Toe, Super Tic Tac Toe

---

**Reminder:** ReadMe.MD should be known as a list making tool with HTML and GitHub Markdown

# Progressions short list
- [] Case Study of Music App or Music Buttons (Static or Pop-style Menu Item)
- [] Find MP3 Files, music & Sound Effects (You Tube Audio Library)
  - [] Able to use my downloaded examples
- [] Introduction and Review of Processing IDE, Processing Boilerplate
- [] Introduction and Review of Manager (Libraries & features, example code, various print resources related to code)
- [] Introduction to Minim Library (code within Processing, Minim Website and Documentation)
  - https://code.compartmental.net/minim/
- [] Introduction to Variables: declaration, naming (camel & snake,), global & local, manipulation

- [] Question about Progression: does minim allow static programs to work?

- [] String Variables: pathways, files names and types, concatenation
- [] Console for inspection: print() & println() with character escapes
- [] Using Idea of Processing Boilerplate to inflate variables with specific music
- [] Able to name music-variable same as fileName but better to introduce playList as collection of songsNum (intro array)
- [] Verify Button Pressing uses a sound effect (keyPressed & mousePressed)
  - [] introduce released and different parts of the mouse
  - [] collectively called listeners, interrupts void draw() 
- [] Verify music will play with simple play button connected to last line in setup()
- [] Verify specific song will play with keyPressed and mousePressed
  - [] keyPressed: normal keys and keyCode
  - [] mousePressed: LEFT, RIGHT, CENTER, WHEEL, etc.
- [] Introduce MP3 metadata, what pieces of metadata will be used
- [] Introduce NULL and Error catch related to single line IF, output empty String to CONSOLE
- [] Finish Loading Music by summarizing it into a TAB and linking it to the MAIN Program (i.e. subprogram repeats boilerplate for connections to MAIN)
- [] Key Board Shortcut for Quit: normal "Q" and ESC keycode button
  - [] Reminder: void draw will finish executing rest of code grouping
  - [] Will need delay() feature so keyPressed(){} will play full sound effects
  - [] keyPressed(){} sound effect
  - [] exit() sound effect
- [] Algorithms for Music Features, prototyped in to keyPressed using Normal Keys
-[]  Note: Algorithms can be done at same time as 2D Buttons Objects (See Below)
  -  [] Simple Single Song Play Buttons, as Case Studies
    - [] Describe in simple words and answer "what does this button do, how does it differ from other buttons
      - [] Descriptions will guide IF statements below
    - [] Play-Pause (remember, develop these buttons separately then combine them)
    - [] Stop
    - [] Mute
    - [] Fast Forward
    - [] Fast Rewind
  - [] Library Functions needed for Buttons Above
    - [] .isPlaying()
    - [] .isMuted()
    - [] .pause()
    - [] .rewind()
    - [] .play(), but Auto Play is better (see below)
    - [] .unmute()
    - [] .mute()
    - [] .skip(+/-milliSeconds)
  - [] Pseudocode all buttons & demonstrate one way of coding
    - [] Single Line IF
    - [] Multiple Line IF
    - [] IF - ELSE
    - [] IF - ELSE IF - ELSE
  - [] Once code is IN keyPressed(){} under different Normal Buttons, group code and create separate VOIDs to name the feature
  - [] Purpose: code is written once but accessed more than once
  - [] keyPressed() should only have references to VOIDs in Music TAB (Subprogram)
- [] 2D Shapes as Music Feature Symbols
  - [] Case Study the different features, will relate to previous definitions of music features
    - [] Observe how buttons like next song include ideas like fast forward and pause or fast forward and auto-play (if song was already playing) 
    - [] design buttons in order, illustrate how stop designs rest:
      - [] stop
      - [] pause
      - [] play
      - [] mute
      - [] fast forward, skip forward in seconds
      - [] fast reverse, skip reverse in seconds
      - [] next song
      - [] previous song
      - [] three loops buttons (single song once, single song infinite, playlist infinite)
        - [] note: single song once is an exercise to learn about loop (play & then start looping)
      - [] shuffle
    - [] Case Study will determine how keyVariable width or displayWidth will determine basic STOP button
    - [] Note: STOP Button, square, determines basic sizes of other buttons
    - [] Note: shapes in fast forward and next illustrate what actually happens
  - [] Introduce difference between size() and fullScreen()
  - [] Declare landscape, square, or portrait
  - [] Use println() to verify CANVAS will fit into DISPLAY
  - [] Introduce simple number OR variable comparison to populate appWidth & appHeight
  - [] ERROR Catch: if CANVAS does not fit in DISPLAY, appWidth & appHeight are display key variables instead
  - [] Optional ERROR Catch: ternary operator to turn phone from portrait to landscape
  - [] Build formulae to divide appWidth into how many STOP buttons wide Case Study is
  - [] Build reference of side length as local variable
  - [] ERROR Catch: println() how many buttons in the height the appHeight will hold, does this match case study
  - [] Advanced ERROR Catch: if total buttons on the height will not fit, adjust as needed
  - [] IN void draw(){}
    - [] Separate all button code with comments
    - [] design of music buttons based on rect(), triangle(), and ellipse()
    - [] Use line and 2D shape drawing features to design colours
  - [] Hover over control of "almost click" (bright colour, bight red if serious, gray scale if simple feedback)
    - [] note: fill the DIV rect() for each button for hover over
  - [] Boolean-control line ink and shape fill with day mode and night mode colours
    - [] introduce time clock as forcing control of night mode
    - [] variable uses simple addition ( counting cycles of draw(){} )
    - [] check time clock every million cycles and update variables
    - [] For example, checking every 15 minutes, 54000 cycles = 60 * 60 * 15
    - [] Note: this is not crystal based but OS based ... OS might prioritize something else than 60 cycles of draw every second
- [] Advanced Buttons, Combining Music Button Features with 2D Shapes
- [] Require Array for Play List
  - [] Code "Multiple" Song Buttons
    - [] Introduce Array and Index from alpha numeric numbering
    - [] Auto Play Button (used instead of a play button)
    - [] Next Button
    - [] Previous Button
  - [] Advanced Buttons
    - [] Loop Current Song Infinitely
    - [] Loop Play List
    - [] Shuffle Play List (hint: randomly choose song number, might need casting)
- [] Advanced: drawing 2D buttons anywhere on the canvas (do activity of put a dot on the page and fold to find the ratio of dimensions)
  - [] All shapes start from one coordinate (middle of page)
- [] Display ERROR: compare number to see if CANVAS is larger than display
  - [] ERROR Catch: appWidth and appHeight are displayWidth and displayHeight, not width and height
  - [] Useful when not using size()



GOTO P4 and CONTINUE HERE

### Ideas (Read this in VCS)
- advanced introductory: list of music files .mp3, as populated from meta data from .mp3 files (CAUTION: this is an impossible ask, can you explain why)

- Multiple Songs require change to array and index (computer tracks alpha numeric variable naming)

- Program Start in OS, Splash Screen to Enter, then Feature List
- Music Program can be a button or an Easter Egg hidden as a hover over feature developed into every case study
- 

- Hover Over effects

- Colour schemes: day and night
- More advanced Personalizations

---

# Assessment
- Different Items to Grade, <a href="">Click Here when Available</a>
- List of Expected Prototyped Programs, <a href="">Click Here when Available</a>

Different Items to Grade
- Concatenation of Strings to form pathways and file names
- Population of all visual objects dependant on size() or fullScreen() to appWidth & appHeight
- Music Subprogram & Boilerplate connections from TAB to MAIN
- Music Features as key board short cuts & mousePressed buttons

- Naming of groups of code and connection to MAIN Program

Note about assessment
- Music Program or App Engine will contain all code
- Each Lesson is prototyped as a separate program

List of Prototyped Programs to be in corporated into Music Program or App Engine
- May change based on individual preference
- Have a boiler plate new base program to prototype with
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
