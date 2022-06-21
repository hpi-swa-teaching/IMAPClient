instance creation
open: aFolderDialogInstance with: anEndpoint

	| instance |
	"if dialog is opened with existing data, its in update mode"
	instance := self new.
	instance folderDialogInstance: aFolderDialogInstance.
	instance data: anEndpoint accountInfo.
	instance updateMode: true.
	instance endpoint: anEndpoint.
	
	^ ToolBuilder default open: instance