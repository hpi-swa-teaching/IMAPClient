login
loadEmailsFromMaildir
	| path fileDirectory |
	fileDirectory := (FileDirectory startUp) default.
	path :=  'Maildir' , FileDirectory slash, self serverInfo host.
	(fileDirectory directoryExists: path)
		ifFalse: [ ^ (OrderedCollection new)].
	
	Transcript show: ((fileDirectory on: path) directoryNames)
	