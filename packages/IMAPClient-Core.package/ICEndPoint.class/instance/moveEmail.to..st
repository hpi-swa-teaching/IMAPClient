protocol handling - move
moveEmail: anEmail to: folderName
	
	"has to be refactored immediately"
	|aFolder|
	(self movedMailStorage getSetForAccount: self connectionHandler accountInfo accountName andFolder: anEmail folder folderName) remove: anEmail ifAbsent: [].
	aFolder := self rootFolder childFolderNamed: folderName ifAbsent: [].
	self deleteMailLocally: anEmail.
	self connectionHandler select: anEmail folder path.
	anEmail folder: aFolder.
	self movedMailStorage addMail: anEmail forAccount: self accountInfo.
	
	aFolder addMails: {anEmail}.
	
	self resetDeletedFlagWhenRecovering: anEmail.
	
	self connectionHandler moveEmail: anEmail messageID to: folderName.
	(self rootFolder childFolderNamed: folderName with: (self hierarchyDelimiter)) update