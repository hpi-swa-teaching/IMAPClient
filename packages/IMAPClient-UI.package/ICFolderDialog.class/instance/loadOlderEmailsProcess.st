action - load older emails
loadOlderEmailsProcess

	self selectedFolder loadOlderMails.
	self selectedFolder updateWithLoadedEmails: self selectedFolder endpoint collectAllEmails.
	self triggerEmailChanges