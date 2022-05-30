read file
addMailTo: aFolder from: aFile

	aFolder addMails: {
		(ICEmail newFromJsonStream: aFile) 
		folder: aFolder; 
		yourself}
