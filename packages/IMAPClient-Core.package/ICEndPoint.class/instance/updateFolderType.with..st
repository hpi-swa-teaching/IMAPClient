storage
updateFolderType: aICFolder with: aFolderType

	(aICFolder folderType ~= aFolderType) ifTrue: [
		aICFolder folderType: aFolderType.
		self readWriter writeFolder: aICFolder].
	^ aICFolder
	