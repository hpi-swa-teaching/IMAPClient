accessing
collectAllChildFolders

	^ self collectAllFolders
		remove: self;
		yourself