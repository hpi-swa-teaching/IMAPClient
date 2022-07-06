instance creation
newFrom: aJson

	^ self new
 		notSyncedFolders: (aJson at: 'notSyncedFolders' ifAbsent: [OrderedCollection new]) asOrderedCollection
	