Music Filter
===================

Mucisans apply the 'band pass filter' to tracks that enables them to modify the sound of their music.

The filter has a default minimum and maximum freqency:
- MIN_DEFAULT = 40 
- MAX_DEFAULT = 1000 
Users have the ability to change the min/max freqencies.

Example inout/output:  

Given an array of frequencies the filter will raise and/or lower the maximum and minimum allowed freqencies.

INPUT               | OUTPUT
--------------------|-----------------
[60,10,45,60,1500]	| [60,40,45,60,1000]

Sound wave --> Sound wave  
Sound wave = Arry of Intergers 

Criteria:

INPUT           | OUTPUT
----------------|----------------
[40,100,1000]	  | [40,100,1000] 
[10,100,1000]	  | [40,100,1000] 
[40,100,1050]	  | [40,100,1000] 
[10,100,1050]	  | [40,100,1000] 

If no soundwaves are provided an error is thrown: Error "No frequencies supplied"

Should be able to process a full sec of music
44000 freq in 100ms
