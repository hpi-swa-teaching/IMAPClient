accessing
collectAllFolders

	| allFolders |
	allFolders := OrderedCollection new.
	allFolders addAll: {self}.
	self childFolders do: [:folder | allFolders addAll: folder collectAllFolders].
	
	^ allFolders