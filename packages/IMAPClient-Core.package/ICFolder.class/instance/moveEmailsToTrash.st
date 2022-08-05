action - remove emails
moveEmailsToTrash

	[self emails isEmpty] whileFalse: [self endpoint deleteEmail: self emails first]