folder selection
selectedFolder: aFolder
	| process |
	selectedFolder := aFolder.
	process := [self fetchHeaderProcess] newProcess.
	process priority: (Processor userBackgroundPriority).
	process resume.
	self changed: #selectedFolder.
	self changed: #emailsOfSelectedFolder.