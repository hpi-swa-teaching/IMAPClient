read file
addMailTo: aFolder from: aFile

	| email matchingEmail |
	email := (ICEmail newFromJsonStream: aFile)
			folder: aFolder;
			yourself.
	matchingEmail:= self loadedEmails select:  [:each | each id = email id].
	
	matchingEmail isEmpty
	ifTrue: [aFolder addMails: {email}]
	ifFalse: [
		self assert: matchingEmail size = 1 description: 'Critical Error. Email ID is not Unique!'.
		matchingEmail first transferAttributesFrom: email.
		
		aFolder addMails: {matchingEmail first}]
	