accessing
createAFolder: anName in: anICParentFolder

	| folder |
	folder := ICFolder named: anName in: anICParentFolder with: self endPoint of: #Generic.
	self writeFolderOnDisk: folder.
	^ folder