# Music Player
Static to Basic Objects, developing a Music Player either as a CS20-30 Review or CS10 Course Long Project

---

# To Do List
- Review Computer Science Planning and Grading to get a summary idea of curriculum and reference
- What other repositories should I incorporate and delete

---

# Purpose
- Create code for Visual Data, independent of actual data
- Use Music Library, Minim, to process all .mp3 data and meta data
- Use Java Libraries to read files
- Understand how prototyping pieces can be incorporated into a larger program (rules for how code is read by compiler)
- Understand how pseudocode fits into static-dynamic-procedural-classes-abstractClasses-interfaces
- Understand how groups of lines are named and understood as sections in a larger program, when it can be ignored as functioning properly

**Entire Music Program runs independent of display and music being played**

Note about file.txt:
- music player automatically finding music file and using file reading-writing to remember this file is an advanced application of CS30 and CS20
- extends the concept of program personalization based on file.txt and population of variables

---

# Outline with internal Hyperlinks
- General: Case Study, <a href="">Click Here when Available</a>

## Any Course: Case Study

Image of a Music Player

Recopy image and layout developer level rectangles: develop ratios

Use Static Programming to build required 2D Images for Music Buttons
- 

Short List of Required Minum Library Functions
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

###
## Introductory: Processing.pde HelloWorld


---

## Ideas for Above
1. Case Study
. Developer Level Rectangles, Layout Connections to Case Study
. Hello World
. Geometry Checker: landscape, portrait, and square
. Display Checker: does the CANVAS fit in the Display, is the Canvas the same geometry as the screen, how can the appWidth and AppHeight be adjusted to help this ("turn your phone")
. 2D Shapes: "The Buttons of a Music Player
. 

Ideas:
- MP3 Metadata Populating Strings, Introduction to API Populating all Data Types, Constructors and toString()
- Reading number of items in a folder, advanced pathways and abstract pathways

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
