get emails
loadOlderEmailsProcess

	| from to |
	from := self getLowestUID - self class numberOfHeadersToFetchAfterFirstLogin.
	to := self getLowestUID - 1.
	self selectedFolder fetchHeadersFrom: from to: to.
	Transcript show: (self selectedFolder emails).
	self changed: #emailsOfSelectedFolder