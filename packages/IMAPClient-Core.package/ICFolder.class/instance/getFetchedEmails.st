action - update emails
getFetchedEmails

	| fetchedEmails |
	self endPoint select: self path.
	fetchedEmails := self endPoint maildirDiffFetchAllHeaders.
	fetchedEmails isEmpty ifFalse: [self retrieveAllFlagsFromEmails: fetchedEmails].
	(fetchedEmails select: [:anEmail | anEmail body isNil or: [anEmail body isEmpty]]) do: [:anEmail |
		anEmail body: (self retrieveBodyFor: anEmail).
		self endPoint switchFlag: #seen for: anEmail to: (anEmail perform: #seen)].
	^ fetchedEmails