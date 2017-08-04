maildir
maildirDirectory

	(FileDirectory default directoryExists: 'Maildir')
		ifFalse: [FileDirectory default createDirectory: 'MailDir'].
	
	^  FileDirectory default directoryNamed: 'Maildir'