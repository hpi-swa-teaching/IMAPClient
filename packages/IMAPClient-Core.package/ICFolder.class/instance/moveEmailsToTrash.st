action - remove emails
moveEmailsToTrash

	self numberOfEmailsBeforeRemoving: self emails size.
	'Moving Emails To Trash: ' displaySequentialProgress: [self moveEmailsToTrashProcess]