constants
defaultInvalidAccountInfo

	^ ICAccountInfo newWith: (Dictionary newFrom: {'address' -> 'imap.test.de'. 'bort' -> 42. 'username' -> 'test@test.test'. 'ssl' -> true})