action - emails
filterEmailsUnread

	self showUnread: self showUnread not.
	self changed: #emailsOfSelectedFolder