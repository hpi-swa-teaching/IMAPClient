action - remove emails
moveEmailsToTrashProcess

	[self emails isEmpty] whileFalse: [
		self showProgress: [self progressCallbackMoveEmailsToTrash].
		self endpoint deleteEmail: self emails first] 