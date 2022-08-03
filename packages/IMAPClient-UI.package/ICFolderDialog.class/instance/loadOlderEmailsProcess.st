action - load older emails
loadOlderEmailsProcess

	self selectedFolder loadOlderMails.
	self selectedFolder startUpdateWithLoadedEmails: self selectedFolder endpoint collectAllEmails.
	self triggerEmailChanges 