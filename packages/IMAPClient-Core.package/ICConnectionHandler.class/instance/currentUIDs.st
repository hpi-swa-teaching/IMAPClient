as yet unclassified
currentUIDs


	self sendCommand: ICCommand allUIDs.
		
	^ (self lastResponse first subStrings: ' ') asOrderedCollection 
		removeFirst;
		removeFirst; 
		yourself