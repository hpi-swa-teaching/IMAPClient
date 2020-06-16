initialize
readSubfoldersMailsFrom: anEmailAccount

	anEmailAccount rootFolder recursiveChildFolders do: [:childFolder |
			childFolder emails do: [:childFolderEmail | 
				self addEmail: childFolderEmail senderAddressFromHeader]]