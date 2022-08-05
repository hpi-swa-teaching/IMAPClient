testing
testKeepReferenceForSameEmailsAfterSync

	self connectionHandler stream: ICMockSocketStream new.
	
	self folder startUpdateWithLoadedEmails: self helper endPoint collectAllEmails.
	
	self assert: (self folder emails contains: [:anICEmail | self email == anICEmail])