toolbuilder
buildAllowConcurrentSync
	
	self settingsPanelWidget morph: (SimpleButtonMorph new label: 'Test Button').
	self changed: #morph.