comparing
equalsExceptFolderAndHeader: anICEmail

	^ self messageID = anICEmail messageID and: [self body = anICEmail body and: [self uniqueID = anICEmail uniqueID]]