action - update emails
syncOnDisk

	self endPoint readWriter sync: (self isRootFolder
		ifTrue: [self collectAllChildFolders]
		ifFalse: [self collectAllFolders])