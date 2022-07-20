action - update emails
startUpdateWithLoadedEmails: anOrderedCollection showProgress: aBoolean with: aBlock 
	
	| successful |
	successful := self
				updateWithLoadedEmails: anOrderedCollection
				showProgress: aBoolean
				with: aBlock.
	self executeFileCommands.
	self endpoint readWriter sync:( self isRootFolder ifTrue: [self collectAllChildFolders] ifFalse: [self collectAllFolders]).
	^ successful