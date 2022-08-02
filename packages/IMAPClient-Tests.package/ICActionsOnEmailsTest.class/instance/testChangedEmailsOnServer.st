testing
testChangedEmailsOnServer

	| mail |
	self connectionHandler stream: ICMockSocketStream new.
	mail := self helper createAnEmail: self testFolder.
	
	self testFolder startUpdateWithLoadedEmails: self helper endpoint collectAllEmails.
	
	self deny: mail = self testFolder emails first