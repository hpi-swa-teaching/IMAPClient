as yet unclassified
delete: anEntry
	| index |
	index := self entries find: anEntry.
	self entries removeAt: index.
	
