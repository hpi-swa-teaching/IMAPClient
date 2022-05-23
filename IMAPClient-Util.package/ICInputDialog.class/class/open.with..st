instance creation
open: aFolderDialogInstance with: aLabel
	|instance |
	
	"if dialog is opened with existing data, its in update mode"
	
	instance := self new.
	instance label: aLabel.

	^ ToolBuilder default open: instance