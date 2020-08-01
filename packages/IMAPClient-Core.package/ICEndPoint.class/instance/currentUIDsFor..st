protocol handling - fetch
currentUIDsFor: anICFolder

	| isEmpty |
		
	self select: anICFolder path.
	isEmpty := true.
	
	self lastResponse do:
		[:line | (line findString: 'EXISTS') positive
			ifTrue: [isEmpty := false]].
	
	isEmpty
	ifFalse: [
		self
			sendCommand: ICCommand allUIDs;
			fetchNextResponse.
		self 
			uids: ((self lastResponse first subStrings: ' ') asOrderedCollection 
			removeFirst;
			removeFirst; 
			yourself)]
	ifTrue: [^ OrderedCollection new]