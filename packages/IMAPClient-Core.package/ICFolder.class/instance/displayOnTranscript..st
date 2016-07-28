textbased display
displayOnTranscript: hierarchyPrefix

	Transcript 
		show: hierarchyPrefix, '[', self name, ']';
		crlf.

	self childFolders do: [ :each | each displayOnTranscript: hierarchyPrefix, self class textbasedHierarchyBlank ]
	