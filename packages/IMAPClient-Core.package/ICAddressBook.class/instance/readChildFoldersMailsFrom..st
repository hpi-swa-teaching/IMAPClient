initialize
readChildFoldersMailsFrom: anEmailAccount

	| anICContact |
	anEmailAccount rootFolder recursiveChildFolders do: [:childFolder |
			childFolder emails do: [:childFolderEmail | 
				anICContact := ICContact newWith: childFolderEmail senderAddressFromHeader
					with: childFolderEmail senderName.
				self addEmail: anICContact asString]]