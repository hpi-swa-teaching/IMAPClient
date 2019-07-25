accessing
folderName

	^ folderName ifNil: [folderName := self class defaultName]