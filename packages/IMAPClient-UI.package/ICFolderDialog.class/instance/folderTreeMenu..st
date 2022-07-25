toolbuilder
folderTreeMenu: aMenu

	self selectedFolder ifNil: [^ aMenu].
	self selectedEndpoint.
	aMenu add: 'sync folder' action: #syncFolder.
	self selectedFolder isTrashFolder ifTrue: [aMenu add: 'empty trash' action: #expungeSelectedFolder].
	
	"method that moves all mails to trash and deletes folder has to be build"
	
	self selectedFolder isSpecialFolder ifFalse: [aMenu add: 'move mails to trash' action: #deleteEmailsFromFolder].
	
	^ aMenu