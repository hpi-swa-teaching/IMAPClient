get emails
startFetchHeaderProcess

	self numberOfHeadersToFetch
		ifNil: [ Transcript show: 'Process aborted. No emails are fetched.']
		ifNotNil: [[ self fetchHeaderProcess ] forkAt: Processor userBackgroundPriority. ]