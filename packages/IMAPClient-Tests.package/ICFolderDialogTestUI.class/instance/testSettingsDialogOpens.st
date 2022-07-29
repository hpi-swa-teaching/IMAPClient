testing
testSettingsDialogOpens

	| openSettingsButton settingsWindow |
	
	openSettingsButton := self subject findByName: ICFolderDialog nameSettingsWindowButton.
	settingsWindow := self getOpenedWindowWithClickOn: openSettingsButton.
	self assert: settingsWindow label equals: 'Settings'.
	