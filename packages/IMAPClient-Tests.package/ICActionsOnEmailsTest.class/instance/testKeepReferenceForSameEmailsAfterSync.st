testing
testKeepReferenceForSameEmailsAfterSync

	self connectionHandler stream: ICMockSocketStream new.
	
	self testFolder startUpdateWithLoadedEmails: self helper endpoint collectAllEmails.
	
	self assert: (self testFolder emails contains:[:anICEmail| self email == anICEmail]).
