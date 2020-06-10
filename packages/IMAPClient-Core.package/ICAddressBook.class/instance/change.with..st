crud
change: anOldEmailString with: newEmailString

	| entryToUpdate |
	
	entryToUpdate := self find: anOldEmailString.
	
	self remove: entryToUpdate.
	self addEmail: newEmailString.