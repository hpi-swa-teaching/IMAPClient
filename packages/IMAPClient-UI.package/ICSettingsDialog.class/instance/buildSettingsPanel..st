toolbuilder
buildSettingsPanel: builder
	
	| window |
	
	window := builder pluggableScrollPaneSpec new
		model: self;
		name: ICSettingsDialog nameSettingsPanel;
		frame: (0.25 @ 0 corner: 1 @ 1).
	self settingsPanel: window.
	self settingsPanelWidget: (builder widgetAt: window name).
	
	^ window
		