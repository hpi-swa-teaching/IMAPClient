fetching
fetchHeadersFrom: aBeginUID to: anEndUID 
	| start end |
	
	"This Method takes the anEndId-aBeginId+1 latest Messages...
	We should definitly rename the parameter, because they simple do
	not fit. fetchHeadersFrom 1 to 5, will pull the 5 newest message --> aka 
	the ones with the highest uid."
	"start..* makes no sense imo --> we should rework."

	self getCurrentUIDs.
	
	aBeginUID >  (self uids size)
		ifTrue: [ ^ OrderedCollection new ].
	anEndUID = '*'
		ifTrue: [ start := self uids first ]
		ifFalse: [ anEndUID >  (self uids size)
				ifTrue: [start := self uids first ]
				ifFalse: [start := self uids at:  (self uids size) - anEndUID + 1 ] ].
	end := self uids at:  (self uids size) - aBeginUID + 1.		
	^ self maildirDiffFetchHeadersFrom: start to: end
		
	