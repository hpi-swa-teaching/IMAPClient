email access
expungeEmails
	
	self emails do: [ :email |
		email deleted ifTrue: [self endpoint deleteMailLocally: email]].
	self endpoint
		select: self path;
		expungeEmails