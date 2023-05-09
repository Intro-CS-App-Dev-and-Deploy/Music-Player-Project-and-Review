
Best Practice: block of code is written once and referenced

See "Demonstration Only"



Draw() Constantly tests code
- AutoPlayON Boolean activates autoPlayMusic, only at end of Song
- If Song is muted then draw tests if the MUTE continues past 80% of the song
  - then pauses and rewinds if true

KeyPressed
- P: AutoPlay for AutoPlay Boolean in draw(), pause button

AutoPlayMusic is a nested play button, read in reverse
- CATUION: there is no off button or control if music is playing indefinitly
- plays next song
- Shuffles entire play list, repeats are possible (looping the playlist is automatic
- Loops the song once
- Loops the song indefinitely
- Note: this is controled in a cascading way

WHAT are the other buttons