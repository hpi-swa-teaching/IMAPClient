textbased display
displayOnTranscript: hierarchyPrefix

	Transcript 
		show: hierarchyPrefix, '[', self name, ']';
		crlf.

	self emails do: [ :each | each displaySubjectOnTranscript: hierarchyPrefix, self class textbasedHierarchyBlank ].
	self childFolders do: [ :each | each displayOnTranscript: hierarchyPrefix, self class textbasedHierarchyBlank ]
	