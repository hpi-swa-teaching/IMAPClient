toolbuilder
buildWith: builder

	| window |
	window := builder build: (builder pluggableWindowSpec new
		model: self;
		label: self class dialogTitle;
		extent: 600 @ 300;
		children: {self buildNavigationPanel: builder. self buildSettingsPanel: builder}).
	self settingsDialogMorph: window.
	self settingsPanelWidget: (builder widgetAt: self class nameSettingsPanel).
	^ window