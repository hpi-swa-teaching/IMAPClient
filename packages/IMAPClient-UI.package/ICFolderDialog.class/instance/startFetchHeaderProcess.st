get emails
startFetchHeaderProcess

	self numberOfHeadersToFetch
		ifNil: [ self inform: 'Enter the number of mails you want to fetch!' ]
		ifNotNil: [[ self fetchHeaderProcess ] forkAt: Processor userBackgroundPriority. ]