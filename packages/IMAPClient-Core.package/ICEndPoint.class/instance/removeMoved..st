protocol handling - move
removeMoved: anEmail
	"removes anEmail from the Set representing the moved Emails in the origin folder, in case it was already moved"

	(self movedMailStorage
		movedMailsForAccount: self accountName
		andFolder: anEmail folder)
		remove: anEmail
		ifAbsent: []