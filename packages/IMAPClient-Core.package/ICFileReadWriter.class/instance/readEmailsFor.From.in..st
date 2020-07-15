read file
readEmailsFor: aFolder From: aPath in: currentDirectory

	aFolder addMails: (currentDirectory fileNames collect: [:filename | 
		(self get: filename in: aPath)
			folder: aFolder;
			yourself ]).