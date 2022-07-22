protocol handling - fetch
select: aFolderName direct: aBool
	
	self currentFolderName: aFolderName.
	self connectionHandler select: aFolderName direct: aBool