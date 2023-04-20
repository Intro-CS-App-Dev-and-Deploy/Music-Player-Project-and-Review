
Review Flat Text
- What are the different TEXT lines of code from Processing
- How can these be organized (paper organizing on the deks)
- How can these be organized into procedures

Introductory Algorithms for text
- See Introductory CS

Text Calculator Alogorithms
- subtracting one pixel at a time
- using percentage
- using inverses (use excell to illustrate what is happening with the numbers
  
  For Example: 	rectWidth = 200
		//Note: no font will be larger than the font height of the CANVAS
		textSize(height); textWidth(string) = 600
		200 * (1+0.5) = 300
		600 / 2 = 300 = 600 * 0.5
		Error check that the inverse is enough
		if not, adjust as increment
		if it is, then start calculations slowly

  For Example: 	textSize(height); textWidth(string)>rectWidth == true
		textWidth(string) / rectWidth = goSlow
		textSize = height / goSlow;
		textSize(textSize); textWidth(string)>rectWidth == true
		**take 99% and repeat
		== false add 5%, then check for true, then start decreasing by 99% for precision

  Purpose: increase speed of algorithms
  - decreasing one pixel at a time
  - decreasing by 1% (will be large decreases at beginning, and as numbers decreases, amount subtracted will decrease
  - using inverses with error-checking to get precision
  - graded on counting the number of times the calculation is run in the WHILE Loop

