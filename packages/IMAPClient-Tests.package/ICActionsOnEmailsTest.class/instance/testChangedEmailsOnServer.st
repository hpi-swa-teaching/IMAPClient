testing
testChangedEmailsOnServer

	| mail |
	self connectionHandler stream: ICMockSocketStream new.
	mail := self helper createAnEmail: self folder.
	
	self folder startUpdateWithLoadedEmails: self helper endPoint collectAllEmails.
	
	self deny: mail = self folder emails first