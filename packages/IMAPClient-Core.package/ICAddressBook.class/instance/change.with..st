crud
change: anOldEmailString with: aNewEmailString

	| entryToUpdate |
	entryToUpdate := self find: anOldEmailString.
	
	self remove: entryToUpdate.
	self addEmail: aNewEmailString