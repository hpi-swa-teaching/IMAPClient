action - sorting/filter
filterButtonLabelUnread

	self showUnread ifTrue: [^ 'All'] ifFalse: [^ 'Unread']