accessing
currentUIDsFor: aFolder

	| isEmpty |
		
	self select: aFolder path direct: true.
	isEmpty := true.
	
	self lastResponse do:
		[:line | (line findString: 'EXISTS') positive
			ifTrue: [isEmpty := false]].
		
	isEmpty 
		ifFalse: [^ self currentUIDs ]
		ifTrue: [^ OrderedCollection new]