get emails
startFetchHeaderProcess

	| process |
	self numberOfHeadersToFetch
		ifNil: [ self inform: 'Enter the number of mails you want to fetch!' ]
		ifNotNil: [
			process := [ self fetchHeaderProcess ] newProcess.
			process priority: (Processor userBackgroundPriority).
			process resume ]