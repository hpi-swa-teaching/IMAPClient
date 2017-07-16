login
loadEmailsFromMaildir
	| path fileDirectory existing_emails filereader|
	fileDirectory := (FileDirectory startUp) default.
	
	path :=  'Maildir' , FileDirectory slash, (self serverInfo host) copyReplaceAll: '.' with: '_'.
	(fileDirectory directoryExists: path)
		ifFalse: [Transcript show: 'Maildir doesnt exist'. ^ (OrderedCollection new)].
	
	filereader := ICFileReadWriter new.
	((fileDirectory on: path) directoryNames) do:
		[:foldername | existing_emails := OrderedCollection new.
			self rootFolder addFolder: ((ICFolder new) name: foldername; emails: existing_emails; endpoint: self; yourself).
			(fileDirectory on: (path, FileDirectory slash, foldername)) fileNames do:
			[ :filename | existing_emails add: (filereader get: filename in: (path, FileDirectory slash, foldername))]].
	
	^ existing_emails