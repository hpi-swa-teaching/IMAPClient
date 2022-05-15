toolbuilder
folderTreeMenu: aMenu

	self selectedFolder ifNil: [^aMenu].
	
	(self selectedFolder isTrashFolder) ifTrue: [
		aMenu add: 'empty trash'
				action: #expungeSelectedFolder].
			
"method that moves all mails to trash and deletes folder has to be build"
			
	(self selectedFolder isStandardFolder) ifFalse: [
		aMenu add: 'delete folder'
				action: #halt].
	
	^ aMenu