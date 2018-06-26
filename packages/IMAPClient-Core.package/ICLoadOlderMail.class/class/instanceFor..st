instances
instanceFor: anICFolderDialog

	instance ifNil: [instance := self new
		header: (Dictionary newFrom: {
			#date -> ''.
			#from -> ''.
			#seen -> true.
			#subject -> 'load older eMails!'.
			#to -> OrderedCollection new});
		body: '';
		seen: true;
		flagged: false;
		messageID: '-1';
		uid: '-1'].
	
	^ instance folder: anICFolderDialog selectedFolder; folderDialog: anICFolderDialog