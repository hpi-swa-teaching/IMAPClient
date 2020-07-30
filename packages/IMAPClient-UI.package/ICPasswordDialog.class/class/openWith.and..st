instance creation
openWith: anAccountInfo and: anInstance 

	| instance |
	
	instance := self new.
	instance data: anAccountInfo.
	instance folderDialogInstance: anInstance.
	
	^ ToolBuilder default open: instance