An ICSettingsDialog is a window to adjust the settings of a selected EndPoint.

Instance Variables
	emailAccounts: 		collection of EndPoints
	folders:					an Array of all folders of the selected EndPoint
	folderIndex:			a variable needed for the pluggableMultiSelectionListSpec (getter: folderSelected, setter: folderSelected:)
	selectedEndPoint:		an ICEndPoint
	selectedNotSyncedFolders:	a collection of the not-to-be-synced folders
	selectedSetting:		the selected setting to be shown on the right of the window
	settingsDialogMorph:	morph to be used for UI-Testing (Morphic-Testing-Framework)
	settingsPanelWidget:	widget on the right of the window where a selected setting is displayed