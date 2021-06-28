protocol handling - move
moveEmail: anEmail to: folderName
	
	"has to be refactored immediately"
	|aFolder|
	(ICMovedEmailStorage at: self accountInfo at: anEmail folderName) remove: anEmail.
	aFolder := self rootFolder childFolderNamed: folderName ifAbsent: [].
	self deleteMailLocally: anEmail.
	self connectionHandler select: anEmail folder path.
	anEmail folder: aFolder.
	ICMovedEmailStorage addMail: anEmail forAccount: self accountInfo.
	
	aFolder addMails: {anEmail}.
	
	self resetDeletedFlagWhenRecovering: anEmail.
	
	self connectionHandler moveEmail: anEmail messageID to: folderName.
	(self rootFolder childFolderNamed: folderName with: (self hierarchyDelimiter)) update