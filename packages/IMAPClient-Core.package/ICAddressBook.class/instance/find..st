crud
find: anEntry

	| index |
	index := self indexOf: anEntry.
	^ self at: index