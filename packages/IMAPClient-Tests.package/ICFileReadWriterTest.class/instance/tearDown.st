teardown
tearDown

	(FileDirectory default / self endpoint maildirFileName) deleteLocalFiles.
	self helper reset.