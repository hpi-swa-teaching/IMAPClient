connection
serverDirectoryPath
	|default_directory maildir_directory directory_name |
	default_directory := FileDirectory default.
	(default_directory directoryExists: 'Maildir')
		ifFalse: [default_directory createDirectory: 'Maildir'].
	maildir_directory := default_directory directoryNamed: 'Maildir'.
	directory_name := (self serverInfo host) copyReplaceAll: '.' with: '_'.
	(maildir_directory directoryExists: directory_name)
		ifFalse: [ Transcript show: 'Maildir doesnt exist'. ^ (OrderedCollection new) ].
	^ maildir_directory directoryNamed: directory_name.