as yet unclassified
selectedNotSyncedFoldersAt: anInteger
	selectedNotSyncedFolders ifNil: [ ^ false ].
	^ selectedNotSyncedFolders includes: (self folders at: anInteger ifAbsent: [ ^ false ]).