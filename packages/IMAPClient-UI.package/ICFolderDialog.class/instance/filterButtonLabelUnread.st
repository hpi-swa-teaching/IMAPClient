action - sorting/filter
filterButtonLabelUnread

	self showUnread ifTrue: [^ 'Unread'] ifFalse: [^ 'All']