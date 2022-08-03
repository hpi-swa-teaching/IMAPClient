action - update emails
getFetchedEmails

	| fetchedEmails |
	self endpoint select: self path.
	fetchedEmails := self endpoint maildirDiffFetchAllHeaders.
	fetchedEmails isEmpty ifFalse: [self retrieveAllFlagsFromEmails: fetchedEmails].
	(fetchedEmails select: [:anEmail | anEmail body isNil or: [anEmail body isEmpty]]) do: [:anEmail |
		anEmail body: (self retrieveBodyFor: anEmail).
		self endpoint switchFlag: #seen for: anEmail to: (anEmail perform: #seen)].
	^ fetchedEmails