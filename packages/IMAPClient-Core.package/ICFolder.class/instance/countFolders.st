folder hierarchy
countFolders

	^ self childFolders inject: self childFolders size into: [:count :child | count + child countFolders]