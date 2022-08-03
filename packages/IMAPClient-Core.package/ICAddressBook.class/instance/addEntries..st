initialize
addEntries: anEmailCollection

	anEmailCollection do: [:emailAccount |
		self
			readRootFoldersMailsFrom: emailAccount;
			readChildFoldersMailsFrom: emailAccount]