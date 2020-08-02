instance creation
openWith: anAccountInfo and: anInstance 

	| instance |
	
	instance := self new.
	instance accountInfo: anAccountInfo.
	instance folderDialogInstance: anInstance.
	
	^ ToolBuilder default open: instance