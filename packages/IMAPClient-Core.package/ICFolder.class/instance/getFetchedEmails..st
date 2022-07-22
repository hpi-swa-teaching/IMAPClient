action - update emails
getFetchedEmails: anUID
	
	| fetchedEmails |
	
	fetchedEmails :=self endpoint maildirDiffFetchHeadersFor: self from: anUID.
	self halt.
	fetchedEmails isEmpty ifFalse: [self retrieveFlagsFromEmails: fetchedEmails].
	(fetchedEmails select: [:anEmail | anEmail body isNil or: [anEmail body isEmpty]]) do: [:anEmail |
		anEmail body: (self retrieveBodyFor: anEmail).
		self endpoint switchFlag: #seen for: anEmail to: (anEmail perform: #seen)].
	^ fetchedEmails