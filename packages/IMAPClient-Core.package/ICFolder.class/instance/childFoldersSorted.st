accessing
childFoldersSorted

	^ self childFolders sort: [:a :b |
		a isSpecialFolder
			ifTrue: [
				b isSpecialFolder
					ifFalse: [true]
					ifTrue: [(self specialFolderTypes indexOf: a folderType) <= (self specialFolderTypes indexOf: b folderType)]]
			ifFalse: [
				b isSpecialFolder
					ifTrue: [false]
					ifFalse: [a folderName caseInsensitiveLessOrEqual: b folderName]]]