email access
loadOlderMails

	"load #numberOfMails mails starting at lowest uid"
	
	self emails addAll: 
		(self endpoint
			getCurrentUIDsFor: self;
			fetchMailsBeginningAt: self getLowestUniqueID number: self class numberOfHeadersToFetchAtLoadOlderMails)