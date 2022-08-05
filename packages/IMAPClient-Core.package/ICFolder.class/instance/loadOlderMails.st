action - update emails
loadOlderMails

	self emails addAll: (self endPoint
		fetchMailsBeginningAt: self lowestUniqueID
		number: self class numberOfHeadersToFetchAtLoadOlderMails)