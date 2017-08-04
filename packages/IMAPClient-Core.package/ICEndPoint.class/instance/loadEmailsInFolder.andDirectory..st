login
loadEmailsInFolder: aFolder andDirectory: aDirectory

	| existing_emails filereader folder email |
		 
	filereader := ICFileReadWriter new.
	existing_emails := OrderedCollection new.
	folder := ((ICFolder new) name: aFolder;
		emails: existing_emails;
		endpoint: self; yourself).
	self rootFolder addFolder: folder.
	((aDirectory directoryNamed: aFolder) fileNames do:
		[ :filename |
			email := (filereader get: filename in: (aDirectory, FileDirectory slash, aFolder)).
		email folder: folder.
	 	existing_emails add: email ]).
	^ existing_emails