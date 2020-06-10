initialize
feedMeWithEntries: anEmailCollection

	anEmailCollection do: [:emailAccount | 
		self 
			readRootFoldersMailsFrom: emailAccount;
			readSubfoldersMailsFrom: emailAccount.]