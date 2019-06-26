as yet unclassified
moveEmail: anICEmail to: aFolderString

	self connectionHandler moveEmail: anICEmail messageID to: aFolderString.
	(self rootFolder childFolderNamed: aFolderString with: self hierarchyDelimiter) update