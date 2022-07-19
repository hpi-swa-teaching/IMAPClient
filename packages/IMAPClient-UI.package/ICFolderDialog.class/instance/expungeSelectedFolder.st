action - emails
expungeSelectedFolder

	self selectedFolder
		expungeEmails;
		updateWithLoadedEmails: self selectedFolder endpoint collectAllEmails;
		triggerEmailChanges