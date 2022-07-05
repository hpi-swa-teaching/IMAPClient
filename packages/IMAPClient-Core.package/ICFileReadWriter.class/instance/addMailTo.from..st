read file
addMailTo: aFolder from: aFile

	self halt.
	aFolder addMails: {
		(ICEmail newFromJsonStream: aFile)
			folder: aFolder;
			yourself}