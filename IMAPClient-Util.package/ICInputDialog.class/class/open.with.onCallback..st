instance creation
open: aFolderDialogInstance with: aLabel onCallback: aMethod

	|instance |
	
	"if dialog is opened with existing data, its in update mode"
	
	instance := self new.
	instance closingMethod: aMethod.
	instance owner: aFolderDialogInstance.
	instance label: aLabel.

	^ ToolBuilder default open: instance