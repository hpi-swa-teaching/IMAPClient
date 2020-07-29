private
readEmailsFor: aFolder From: aPath In: currentDirectory

	aFolder addMails: (currentDirectory fileNames collect: [:filename | 
		(self get: filename in: aPath)
			folder: aFolder;
			yourself ]).