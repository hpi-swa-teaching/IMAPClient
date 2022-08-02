testing
testChangedEmailsOnServer

	| folder1 mail |
	self connectionHandler stream: ICMockSocketStream new.
	folder1 := self helper createAFolder: 'folder1' in: self helper endpoint rootFolder.
	mail := self helper createAnEmail: folder1.
	
	folder1 startUpdateWithLoadedEmails: self helper endpoint collectAllEmails.
	
	self deny: mail = folder1 emails first