action - emails
expungeSelectedFolder

	self selectedFolder
		expungeEmails;
		startUpdateWithLoadedEmails: self selectedFolder endpoint collectAllEmails
			showProgress: false
			with: [];
		triggerEmailChanges