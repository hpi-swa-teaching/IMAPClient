action - update emails
loadOlderMails

	self emails addAll: (self endpoint
		fetchMailsBeginningAt: self lowestUniqueID
		number: self class numberOfHeadersToFetchAtLoadOlderMails)