fetching
currentUIDsFor: anICFolder

	| isEmpty |
		
	self select: anICFolder path.
	isEmpty := true.
	
	(self lastResponse do:
		[:line | (line findString: 'EXISTS') > 0
			ifTrue: [isEmpty := false]]).
	
	isEmpty
	ifFalse: [
		self
			sendCommand: self class allUIDs;
			fetchNextResponse.
		self 
			uids: (((self lastResponse at: 1) subStrings: ' ') asOrderedCollection 
			removeFirst;
			removeFirst; 
			yourself)]
	ifTrue: [
			Transcript show: (anICFolder folderName), ' is an empty folder!'. 
			^ OrderedCollection new]