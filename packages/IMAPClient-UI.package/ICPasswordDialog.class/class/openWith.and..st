instance creation
openWith: aDictionary and: anInstance 

	| instance |
	
	instance := self new.
	instance data: aDictionary.
	instance folderDialogInstance: anInstance.
	
	^ ToolBuilder default open: instance