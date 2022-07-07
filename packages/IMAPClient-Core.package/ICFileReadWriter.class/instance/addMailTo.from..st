read file
addMailTo: aFolder from: aFile

	| email matchingEmail |
	email := (ICEmail newFromJsonStream: aFile)
			folder: aFolder;
			yourself.
	matchingEmail:= self loadedEmails select:  [:e | e id = email id].
	
	self halt.
	matchingEmail isEmpty
	ifTrue: [aFolder addMails: {email}]
	ifFalse: [
		self assert: matchingEmail size = 1 description: 'Crutical Error. Email ID is not Unique!'.
		matchingEmail first deserializeFrom: (Json readFrom: aFile).
		matchingEmail first folder: email folder.
		aFolder addMails: {matchingEmail first}]
	