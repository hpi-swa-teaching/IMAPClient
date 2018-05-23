instances
instanceFor: anICFolderDialog

	Instance ifNil: [Instance := self new
		header: (Dictionary newFrom: {
			#date -> ''.
			#from -> ''.
			#subject -> 'load older eMails!'.
			#to -> OrderedCollection new });
		body: '';
		messageID: '-1';
		uid: '-1'].
	^ Instance folder: anICFolderDialog selectedFolder; folderDialog: anICFolderDialog