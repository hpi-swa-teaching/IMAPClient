as yet unclassified
selectedNotSyncedFoldersAt: anInteger put: aBoolean

	self selectedNotSyncedFolders: (self selectedNotSyncedFolders
		perform: (aBoolean ifTrue: [#copyWith:] ifFalse: [#copyWithout:])
		with: (self folders at: anInteger ifAbsent: [^ self])).
	self changed: #foldersSelected