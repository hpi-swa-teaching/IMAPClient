textbased display
displayOnTranscript

	Transcript 
		show: '[', self name, ']';
		crlf.
	
	self emails do: [ :each | each displaySubjectOnTranscript: self class textbasedHierarchyBlank ].
	self childFolders do: [ :each | each displayOnTranscript: self class textbasedHierarchyBlank ]
	