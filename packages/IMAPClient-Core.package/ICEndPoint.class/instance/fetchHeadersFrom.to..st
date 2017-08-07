fetching
fetchHeadersFrom: aBeginId to: anEndId 
	| start end |
	self getCurrentUIDs.
	aBeginId >  (self uids size)
		ifTrue: [ ^ OrderedCollection new ].
	anEndId = '*'
		ifTrue: [ start := self uids first ]
		ifFalse: [ anEndId >  (self uids size)
				ifTrue: [start := self uids first ]
				ifFalse: [start := self uids at:  (self uids size) - anEndId + 1 ] ].
	end := self uids at:  (self uids size) - aBeginId + 1.	
	^ self maildirDiffFetchHeadersFrom: start to: end