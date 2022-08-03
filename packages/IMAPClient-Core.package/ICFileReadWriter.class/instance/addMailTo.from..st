read file
addMailTo: aFolder from: aFile

	| email matchingEmails |
	email := ICEmail newFromJsonStream: aFile.
	email folder: aFolder.
	matchingEmails := self loadedEmails select: [:each | each id = email id].
	self assert: matchingEmails size <= 1 description: 'Critical Error. Email ID is not Unique!'.
	
	matchingEmails isEmpty ifTrue: [aFolder addMail: email] ifFalse: [
		matchingEmails first transferAttributesFrom: email.
		aFolder addMail: matchingEmails first]