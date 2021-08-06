action - emails
expungeSelectedFolder

	self selectedFolder
		expungeEmails;
		update;
		triggerEmailChanges