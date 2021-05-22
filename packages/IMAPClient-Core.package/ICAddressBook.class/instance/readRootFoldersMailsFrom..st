initialize
readRootFoldersMailsFrom: anEmailAccount 

	| anICContact |
	anEmailAccount rootFolder emails
		do: [:rootFolderEmail | 
			anICContact := ICContact newWith: rootFolderEmail senderAddressFromHeader with: rootFolderEmail senderName.
			self addEmail: anICContact asString]