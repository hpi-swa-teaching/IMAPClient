action - remove emails
expungeEmails

	self emails do: [:email | email deleted ifTrue: [self endPoint deleteMailLocally: email]].
	self endPoint
		select: self path;
		expungeEmails