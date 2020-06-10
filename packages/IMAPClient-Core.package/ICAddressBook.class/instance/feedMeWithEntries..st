initialize
feedMeWithEntries: anEmailCollection

	anEmailCollection do: [:emailAccount | 
		emailAccount rootFolder emails do: [:rootFolderEmail | 
			self addEmail: rootFolderEmail senderAddressFromHeader].
		
		emailAccount rootFolder recursiveChildFolders do: [:childFolder |
			childFolder emails do: [:childFolderEmail | 
				self addEmail: childFolderEmail senderAddressFromHeader].]]