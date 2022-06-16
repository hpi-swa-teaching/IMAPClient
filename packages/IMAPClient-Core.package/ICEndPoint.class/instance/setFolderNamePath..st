storage
setFolderNamePath: aResponseLine

	| folderPath |
	folderPath := self folderPathFor: aResponseLine.
	
	(aResponseLine includesSubstring: '\Trash') ifTrue: [self folderNameOfTrash: folderPath first].
	(aResponseLine includesSubstring: '\Drafts') ifTrue: [self folderNameOfDrafts: folderPath first].
	(aResponseLine includesSubstring: '\Junk') ifTrue: [self folderNameOfJunk: folderPath first].
	(aResponseLine includesSubstring: '\Sent') ifTrue: [self folderNameOfSent: folderPath first].
	(aResponseLine includesSubstring: 'INBOX') ifTrue: [self folderNameOfInbox: folderPath first].
	
	^ folderPath