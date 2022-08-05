toolbuilder
buildSettingsPanel: builder

	^ builder pluggableScrollPaneSpec new
		model: self;
		name: self class nameSettingsPanel;
		frame: (0.25 @ 0 corner: 1 @ 1)
	