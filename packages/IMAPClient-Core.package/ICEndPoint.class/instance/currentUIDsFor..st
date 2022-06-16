accessing
currentUIDsFor: aFolder

	self select: aFolder path.
	
	self lastResponse do: [:line | (line findString: 'EXISTS') positive ifTrue: [^ self currentUIDs]].
	
	^ OrderedCollection new