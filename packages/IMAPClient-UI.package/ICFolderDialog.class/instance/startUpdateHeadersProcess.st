get emails
startUpdateHeadersProcess

	[ self updateHeadersProcess ] forkAt: Processor userBackgroundPriority.