instance creation
open: aFolderDialog with: anEndpoint
	"if dialog is opened with existing data, its in update	mode "

	| instance |
	instance := self new
		folderDialog: aFolderDialog;
		data: anEndpoint accountInfo;
		updateMode: true;
		endPoint: anEndpoint.
	^ ToolBuilder default open: instance