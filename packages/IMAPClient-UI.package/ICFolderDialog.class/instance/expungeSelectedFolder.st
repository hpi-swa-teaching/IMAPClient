action - emails
expungeSelectedFolder

	self selectedFolder
		expungeEmails;
		startUpdateWithLoadedEmails: self selectedFolder endPoint collectAllEmails;
		triggerEmailChanges