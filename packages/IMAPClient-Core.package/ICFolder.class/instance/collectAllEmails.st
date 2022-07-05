accessing
collectAllEmails

	|allEmails| 
	
	allEmails:= OrderedCollection newFrom: {}.
	allEmails addAll: self emails.
	self childFolders do:[:folder|
		allEmails addAll: folder collectAllEmails].
	
	^ allEmails