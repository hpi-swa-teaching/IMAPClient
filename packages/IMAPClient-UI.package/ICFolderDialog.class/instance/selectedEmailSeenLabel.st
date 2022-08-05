toolbuilder
selectedEmailSeenLabel

	^ self selectedEmail seen
		ifTrue: ['Mark as unseen']
		ifFalse: ['Mark as seen']