get emails
loadOlderEmails


	self selectedFolder ifNotNil: [
		[self loadOlderEmailsProcess ] forkAt: Processor userBackgroundPriority]