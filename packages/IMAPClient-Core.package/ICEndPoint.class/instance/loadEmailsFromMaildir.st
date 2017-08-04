login
loadEmailsFromMaildir

	| directory_name maildir_directory default_directory server_directory existing_emails filereader folder email |
	default_directory := FileDirectory default.
	
	(default_directory directoryExists: 'Maildir')
		ifFalse: [default_directory createDirectory: 'Maildir'].
	maildir_directory := default_directory directoryNamed: 'Maildir'.
	directory_name := (self serverInfo host) copyReplaceAll: '.' with: '_'.
	(maildir_directory directoryExists: directory_name)
		ifFalse: [ Transcript show: 'Maildir doesnt exist'. ^ (OrderedCollection new) ].
	server_directory := maildir_directory directoryNamed: directory_name.
	
	filereader := ICFileReadWriter new.
	(server_directory directoryNames) do:
		[ :foldername | 
			existing_emails := OrderedCollection new.
			folder := ((ICFolder new) name: foldername;
				emails: existing_emails;
				endpoint: self; yourself).
			self rootFolder addFolder: folder.
			(server_directory directoryNamed: foldername) fileNames do:
				[ :filename |
					email := (filereader get: filename in: (directory_name, FileDirectory slash, foldername)).
				email folder: folder.
			 	existing_emails add: email ]].
	
	^ existing_emails