login
loadEmailsFromMaildir

	| path fileDirectory existing_emails filereader folder email |
	fileDirectory := (FileDirectory startUp) default.
	
	path :=  'Maildir' , FileDirectory slash, (self serverInfo host) copyReplaceAll: '.' with: '_'.
	
	(fileDirectory directoryExists: path)
		ifFalse: [ Transcript show: 'Maildir doesnt exist'. ^ (OrderedCollection new) ].
	
	filereader := ICFileReadWriter new.
	((fileDirectory on: path) directoryNames) do:
		[ :foldername | 
			existing_emails := OrderedCollection new.
			folder := ((ICFolder new) name: foldername; emails: existing_emails; endpoint: self; yourself).
			self rootFolder addFolder: folder.
			(fileDirectory on: (path, FileDirectory slash, foldername)) fileNames do:
			[ :filename |
				email := (filereader get: filename in: (path, FileDirectory slash, foldername)).
				email folder: folder.
			 	existing_emails add: email ]].
	
	^ existing_emails