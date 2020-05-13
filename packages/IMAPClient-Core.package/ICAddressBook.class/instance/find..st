crud
find: anEntry

	| index |
	index := self entries indexOf: anEntry.
	^ self entries at: index.