action - folder hierarchy
removeFolder: child ifAbsent: block

	(self childFolders includes: child) ifFalse: [^ block value].
	
	child parent: child.
	self childFolders remove: child