instance creation
open: aFolderDialog with: anICEndPoint
	"if dialog is opened with existing data, its in update	mode "

	| instance |
	instance := self new
		folderDialog: aFolderDialog;
		data: anICEndPoint accountInfo;
		updateMode: true;
		endPoint: anICEndPoint.
	^ ToolBuilder default open: instance