accessing
createAnFolder: anName in: anICParentFolder

	| folder |
	folder := ICFolder named: anName in: anICParentFolder with: self endpoint of: #Generic.
	self  writeFolderOnDisk: folder.
	^ folder