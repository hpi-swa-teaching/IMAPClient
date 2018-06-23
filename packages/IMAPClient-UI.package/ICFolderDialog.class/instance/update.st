get emails
update
	[ self updateProcess ] forkAt: Processor userBackgroundPriority.
