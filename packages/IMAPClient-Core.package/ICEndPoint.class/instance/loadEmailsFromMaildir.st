login
loadEmailsFromMaildir

	| directory_name  server_directory filereader |
	
	directory_name := (self serverInfo host) copyReplaceAll: '.' with: '_'.
	(self maildirDirectory directoryExists: directory_name)
		ifFalse: [
			Transcript show: 'Maildir doesnt exist'.
			^ (OrderedCollection new) ].

	server_directory := self maildirDirectory directoryNamed: directory_name.
	
	filereader := ICFileReadWriter new.
	(server_directory directoryNames) do:
		[ :foldername | self loadEmailsInFolder: foldername andDirectory: server_directory ]