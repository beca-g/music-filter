A Band Pass Filter
===================

Mucisans apply the band pass filter to tracks to modify the sound of the music.

Band pass filter has a min and max freq:
- Min = 40 but this can be changed --> bring the freq up to the lowest 
- Max = 1000 but this can be changed --> bring the freq down to the highest

Sound wave --> Sound wave
Sound wave = Arry of Intergers 

Example inout/output:

INPUT               | OUTPUT
[60,10,45,60,1500]	| [60,40,45,60,1000]

Criteria:

No frequancies are changed:
INPUT               | OUTPUT
[40,100,1000]	      | [40,100,1000] 

Min frequancy is not met:
INPUT               | OUTPUT
[10,100,1000]	      | [40,100,1000] 

Max frequancy is not met:
INPUT               | OUTPUT
[40,100,1050]	      | [40,100,1000] 

Min and max frequancies are not met:
INPUT               | OUTPUT
[10,100,1050]	      | [40,100,1000] 

If no soundwaves are provided an error is thrown: Error "No frequencies supplied"

Should be able to process a full sec of music
44000 freq in 100ms
