An ICSettingsDialog is a window to adjust the settings of a selected Endpoint.
To add a setting named <name>, you need to add build method for the user interface as a message called build<name>. This message needs to be added to 'uiBuilders'. You also need a save<name> message that needs to be added to saveActions.

Instance Variables
	emailAccounts: 		collection of Endpoints
	folders:					an Array of all folders of the selected endpoint
	folderIndex:			a variable needed for the pluggableMultiSelectionListSpec (getter: folderSelected, setter: folderSelected:)
	selectedEndpoint:		an ICEndpoint
	selectedNotSyncedFolders:	a collection of the not-to-be-synced folders
	selectedSetting:		the selected setting to be shown on the right of the window
	settingsDialogMorph:	morph to be used for UI-Testing (Morphic-Testing-Framework)
	settingsPanelWidget:	widget on the right of the window where a selected setting is displayed