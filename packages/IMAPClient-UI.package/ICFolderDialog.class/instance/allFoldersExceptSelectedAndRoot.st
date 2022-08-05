toolbuilder
allFoldersExceptSelectedAndRoot

	^ self rootFolder recursiveChildFolders reject: [:each | each = self selectedFolder or: [each = self rootFolder]]