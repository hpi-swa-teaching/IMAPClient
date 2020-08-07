email access
loadOlderMails

	self emails addAll: 
		(self endpoint
			currentUIDsFor: self;
			fetchMailsBeginningAt: self lowestUniqueID number: self class numberOfHeadersToFetchAtLoadOlderMails)