textbased display
displayOnTranscript

	Transcript 
		show: '[', self name, ']';
		crlf.
	
	self eMails do: [ :each | each displaySubjectOnTranscript: self class textbasedHierarchyBlank ].
	self childFolders do: [ :each | each displayOnTranscript: self class textbasedHierarchyBlank ]
	