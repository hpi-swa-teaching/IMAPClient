accessing
rootFolder

	^ rootFolder ifNil: [rootFolder := ICFolder newRootFolderWith: self]