as yet unclassified
find: anEntry
	| index |
	index := self entries find: anEntry.
	^ self entries at: index.