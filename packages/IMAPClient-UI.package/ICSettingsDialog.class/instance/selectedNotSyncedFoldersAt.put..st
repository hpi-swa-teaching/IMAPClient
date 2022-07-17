as yet unclassified
selectedNotSyncedFoldersAt: anInteger put: aBoolean

	selectedNotSyncedFolders := selectedNotSyncedFolders
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (self folders at: anInteger ifAbsent: [ ^ self ]).
	self changed: #foldersSelected