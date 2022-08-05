action - load older emails
loadOlderEmailsProcess

	self selectedFolder loadOlderMails.
	self selectedFolder startUpdateWithLoadedEmails: self selectedFolder endPoint collectAllEmails.
	self triggerEmailChanges