storage
getFolderType: aResponseLine

	| folderType |
	folderType := #Generic.
	
	(aResponseLine includesSubstring: '\Trash') ifTrue: [folderType := #Trash].
	(aResponseLine includesSubstring: '\Drafts') ifTrue: [folderType := #Drafts].
	(aResponseLine includesSubstring: '\Junk') ifTrue: [folderType := #Junk].
	(aResponseLine includesSubstring: '\Sent') ifTrue: [folderType := #Sent].
	(aResponseLine includesSubstring: 'INBOX') ifTrue: [folderType := #Inbox].
	
	^ folderType