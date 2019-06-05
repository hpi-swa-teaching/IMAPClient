email access
loadOlderMails

	"load #numberOfMails mails starting at lowest uid"
	
	self emails addAll: 
		(self endpoint
			currentUIDsFor: self;
			fetchMailsBeginningAt: self lowestUniqueID number: self class numberOfHeadersToFetchAtLoadOlderMails)