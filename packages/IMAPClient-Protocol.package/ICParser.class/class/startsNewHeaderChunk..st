parsing
startsNewHeaderChunk: aLine

	^ (aLine subStrings: ' ') first endsWith: ':'