action - update emails
showProgress: aBlock

	ProgressNotification
		signal: aBlock value
		extra: self accountName, ' Mailbox. Folder: ', self folderName