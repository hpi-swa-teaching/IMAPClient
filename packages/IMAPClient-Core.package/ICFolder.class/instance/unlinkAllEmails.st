accessing
unlinkAllEmails

	self emails: OrderedCollection new.
	self childFolders do:[:folder | folder unlinkAllEmails]