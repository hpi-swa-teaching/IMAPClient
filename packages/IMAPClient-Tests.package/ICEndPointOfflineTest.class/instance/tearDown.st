running
tearDown

	| mailQueue |
	mailQueue := self endPoint movedMailStorage.
	(mailQueue at: self endPoint accountName) removeAll
	
