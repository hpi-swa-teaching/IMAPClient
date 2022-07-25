toolbuilder
buildOpenSettingsWindowButton: builder

	^ builder pluggableButtonSpec new
		name: self class nameSettingsWindowButton;
		model: self;
		frame: (0.75 @ 0 corner: 1 @ 0.05);
		label: self class settingsIcon;
		action: #openSettingsWindow