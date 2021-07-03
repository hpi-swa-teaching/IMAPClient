protocol handling - move
moveEmail: anEmail to: aFolderName
	
	"has to be refactored immediately"
	|aFolder|
	(anEmail folder folderName = aFolderName) ifFalse: [
		
		(self movedMailStorage getSetForAccount: self connectionHandler accountInfo accountName andFolder: anEmail folder) remove: anEmail ifAbsent: [].
		aFolder := self rootFolder childFolderNamed: aFolderName with: self hierarchyDelimiter ifAbsent: [].
		self deleteMailLocally: anEmail.
		self connectionHandler select: anEmail folder path.
		anEmail folder: aFolder.
		self movedMailStorage addMail: anEmail forAccount: self accountInfo.
		aFolder addMails: {anEmail}.
	
		self resetDeletedFlagWhenRecovering: anEmail.
	
		self connectionHandler moveEmail: anEmail messageID to: aFolderName.
		aFolder update
	] ifTrue: [self inform: 'The Email is already in the specified folder']