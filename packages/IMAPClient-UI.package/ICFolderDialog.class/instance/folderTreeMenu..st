toolbuilder
folderTreeMenu: aMenu

	self selectedFolder ifNil: [^aMenu].
	
	(self selectedFolder folderType = #Trash) ifTrue: [
		aMenu add: 'empty trash'
				action: #expungeSelectedFolder].
			
"method that moves all mails to trash and deletes folder has to be build"
			
	(self selectedFolder folderType = #Generic) ifTrue: [
		aMenu add: 'delete folder'
				action: #halt].
	
	^ aMenu