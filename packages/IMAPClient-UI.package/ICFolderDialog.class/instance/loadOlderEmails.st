action - load older emails
loadOlderEmails

	self selectedFolder ifNotNil: [[self loadOlderEmailsProcess] forkAt: Processor userBackgroundPriority]