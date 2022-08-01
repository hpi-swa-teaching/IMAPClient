action - update emails
syncOnDisk

	self endpoint readWriter sync: (self isRootFolder
		ifTrue: [self collectAllChildFolders]
		ifFalse: [self collectAllFolders])