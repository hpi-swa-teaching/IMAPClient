constants
testUnlinkAllEmails

	| folder mail |
	folder := self helper createAFolder: 'folder'.
	
	mail := self helper createAnEmail: folder.
	self assert: (folder emails contains: [:e | e = mail]).
	self helper endPoint unlinkAllEmails.
	
	self assert: folder emails isEmpty