action - emails
syncFolder

	'Updating ' displaySequentialProgress: [
		self selectedFolder
			startUpdateWithLoadedEmails: self selectedFolder endpoint collectAllEmails
			showProgress: true
			with: [0.5].
		self triggerEmailChanges]