protocol parse
folderFromResponse: responseLine

	| response split parent |
	response := ICStringFormatter stripChars: self class protocolQuote from: responseLine.
	
	split := response subStrings: self class protocolBlank.	
	split := split last subStrings: split first.
	
	parent := self rootFolder childFolderNamed: split first ifAbsent: [ ICFolder named: split first in: self rootFolder ].
	split allButFirst do: [ :name | parent := parent childFolderNamed: name ifAbsent: [ ICFolder named: name in: parent ]]
