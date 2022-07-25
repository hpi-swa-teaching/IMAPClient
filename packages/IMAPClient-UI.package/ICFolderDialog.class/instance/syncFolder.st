action - emails
syncFolder

	self selectedFolder startUpdateWithLoadedEmails:  self selectedFolder endpoint collectAllEmails showProgress: true with: [].
	self triggerEmailChanges
