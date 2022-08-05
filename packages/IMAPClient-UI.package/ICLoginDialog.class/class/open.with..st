instance creation
open: aFolderDialogInstance with: anEndpoint 
	"if dialog is opened with existing data, its in update	mode "
	| instance |
	instance := self new folderDialogInstance: aFolderDialogInstance;
				 data: anEndpoint accountInfo;
				 updateMode: true;
				 endpoint: anEndpoint.
	^ ToolBuilder default open: instance