toolbuilder
selectedEmailFlagLabel

	^ self selectedEmail flagged ifTrue: ['Unflag'] ifFalse: ['Mark as flagged']