instance creation
open: aFolderDialogInstance

	| instance |
	
	instance := self new.
	instance folderDialogInstance: aFolderDialogInstance.
	
	^ ToolBuilder default open: instance