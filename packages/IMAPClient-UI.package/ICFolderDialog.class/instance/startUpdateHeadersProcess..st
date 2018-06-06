get emails
startUpdateHeadersProcess: currentUID

	[ self updateHeadersProcess: currentUID ] forkAt: Processor userBackgroundPriority