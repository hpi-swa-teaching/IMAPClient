action - remove emails
moveEmailsToTrashProcess

	[self emails isEmpty] whileFalse: [
		self showProgress: [self progressCallbackMoveEmailsToTrash].
		self endPoint deleteEmail: self emails first] 