instance creation
open: aFolderDialog

	| instance |
	instance := self new.
	instance folderDialog: aFolderDialog.
	
	^ ToolBuilder default open: instance