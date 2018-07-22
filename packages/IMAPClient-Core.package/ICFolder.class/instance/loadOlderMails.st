email access
loadOlderMails

	"load #numberOfMails mails starting at lowest uid"
	
	self emails addAll: (self endpoint
		getCurrentUIDsFor: self;
		fetchMailsBeginningAt: self emails last uid number: self class numberOfHeadersToFetchAtLoadOlderMails)