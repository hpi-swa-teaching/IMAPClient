accessing
collectAllFolders

	| allFolders |
	allFolders := OrderedCollection newFrom: {self}.
	self childFolders do: [:folder | allFolders addAll: folder collectAllFolders].
	
	^ allFolders