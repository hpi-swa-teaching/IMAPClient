initialize
readRootFoldersMailsFrom: anEmailAccount

	anEmailAccount rootFolder emails do: [:rootFolderEmail | 
			self addEmail: rootFolderEmail senderAddressFromHeader]