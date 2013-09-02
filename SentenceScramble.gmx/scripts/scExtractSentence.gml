// Extract SentenceOn string into global.CorrectString[] and global.ScrambledString[], count of words global.WordCount
// Pass in:     Sentence string to extract, "|" delimited
// Process:     Extract SentenceOn string into global.CorrectString[], count of words global.WordCount
// Returns:     nothing (puts into Globals)

// loop through each word in SentenceOn, and put into global.Sentence[], until end

var i,str;
i=0; //first word at position 0
str=argument0; // passed in variable

while (string_length(scStringExtract(str,"|",i))>0) // Test next word length, if zero length i.e. false, gone past last word
    {
    global.CorrectString[i]=scStringExtract(str,"|",i); // Put i'th word into i'th position
    i=i+1;
    }
    
// Once drop out, found word zero length, so i is the global.WordCount (counts from 1)
global.WordCount=i;

return i;




