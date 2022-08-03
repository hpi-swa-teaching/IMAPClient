comparing
equalsExceptFolderAndHeader: anICEmail
	"Answer whether the receiver and anObject represent the same object."

	^ self messageID = anICEmail messageID and: [self body = anICEmail body and: [self uniqueID = anICEmail uniqueID]]