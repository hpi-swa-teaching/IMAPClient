accessing
currentUIDs

	self connectionHandler allUIDs.
		
	"self isConnected 
		ifTrue: ["^ (self lastResponse first subStrings: ' ') asOrderedCollection 
			removeFirst;
			removeFirst; 
			yourself"]
		ifFalse: [^ OrderedCollection new.]"