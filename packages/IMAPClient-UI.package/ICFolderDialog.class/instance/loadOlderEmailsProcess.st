action - load older emails
loadOlderEmailsProcess

	self selectedFolder loadOlderMails.
	self selectedFolder update.
	self triggerEmailChanges