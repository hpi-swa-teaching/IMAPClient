action - emails
update

	self isAlreadyUpdating ifFalse: [
		self unconnectedAccounts
			ifNotEmpty: [self openPasswordDialog]
			ifEmpty: [self startUpdating]]