as yet unclassified
deleteEmail: anICEmail

	self connectionHandler deleteEmail: anICEmail messageID.
	"self moveEmail: anICEmail to: self class folderNameOfTrash <-- Not this method"