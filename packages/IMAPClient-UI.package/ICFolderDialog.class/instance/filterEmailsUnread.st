action - sorting/filter
filterEmailsUnread

	self showUnread: self showUnread not.
	self changed: #emailsOfSelectedFolder.
	self changed: #filterButtonLabelUnreadUpdate