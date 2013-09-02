// Pass in:     nothing (uses global)
// Process:     Scramble global.CorrectString[] array into global.ScrambledSentence[] array using count of words global.WordCount
// Returns:     nothing (puts into gobal)

// loop through each items in array global.CorrectString[], and randomize into global.ScrambledSentence[], until all words processed

var i,str;
i=0; //first item in array
r=0; // random position
word1=""; // first word to swap
// fill up global.ScrambledSentence[] array with correct words, then shuffle it
for (i=0; i<global.WordCount; i=i+1)
    {
    global.ScrambledSentence[i]=global.CorrectString[i];
    }
 
// shuffle items in global.ScrambledSentence[] array
for (i=0; i<global.WordCount; i=i+1)
    {
    r=round(random_range(0,(global.WordCount-1))); // pick random spot in array, as integer
    word1=global.ScrambledSentence[i];  //hold first word to swap
    global.ScrambledSentence[i]=global.ScrambledSentence[r]; // swap 2 words
    global.ScrambledSentence[r]=word1;
    }
   

return true; // nothing to return, return true




