// Get row in global.Level[], for current Level,Chapter(has lookup row for sentences, no. sentences in Chapter-can't return multi-value, so return ref to row
// Pass in:     global.LevelOn, global.ChapterOn
// Processing:  Need to scan array global.Level[] for Level,Chapter
// Return:      global.Level row number, for matching Level,Chapter or 0 if row not found (i.e. gone past last Level, or last Chatper in Level
// show_debug_message("-- Entered scGetLevelRow");
var i;
i=1; // array counts from 1
show_debug_message("-- Entered scGetLevelRow");

//scan array until end
while (scStringExtract(global.Level[i],"|",0))!="" // Test first element, the Level#-if not found should return blank
    {
    show_debug_message("Level,Chapter ="+scStringExtract(global.Level[i],"|",0)+","+scStringExtract(global.Level[i],"|",3));
    if real(scStringExtract(global.Level[i],"|",0))==global.LevelOn // found matching level?
        if real(scStringExtract(global.Level[i],"|",3))==global.ChapterOn // found matching Chapter?
        {
            show_debug_message("-- Left scGetLevelRow, returning "+string(i)+" to global.Sentence[]");
            return(i) // return row in global.Level[], that holds info for the Chapter in the Level
        }
    i=i+1;
    }

// if get to here, didn't find a match, return 0 (not found)
show_debug_message("-- Left scGetLevelRow, no match found, returning 0");
return(0);
