accessing
collectAllEmails

	| allEmails |
	allEmails := OrderedCollection new.
	allEmails addAll: self emails.
	self childFolders do: [:folder | allEmails addAll: folder collectAllEmails].
	
	^ allEmails