toolbuilder
buildSettingsPanel: builder
	
	| spec |
	
	spec := builder pluggableScrollPaneSpec new
		model: self;
		name: ICSettingsDialog nameSettingsPanel;
		frame: (0.25 @ 0 corner: 1 @ 1).
	
	^ spec
		