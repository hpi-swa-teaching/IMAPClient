email access
loadOlderMails

	"load #numberOfMails mails starting at lowest uid"
	
	self emails addAll: 
		(self endpoint
			fetchUIDsFor: self;
			fetchMailsBeginningAt: self lowestUniqueID number: self class numberOfHeadersToFetchAtLoadOlderMails)