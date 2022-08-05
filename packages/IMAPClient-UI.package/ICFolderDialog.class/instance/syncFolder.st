action - emails
syncFolder

	'Updating ' displaySequentialProgress: [
		self selectedFolder
			startUpdateWithLoadedEmails: self selectedFolder endPoint collectAllEmails
			showProgress: true
			with: [0.5].
		self triggerEmailChanges]