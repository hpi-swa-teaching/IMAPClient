toolbuilder
buildSettingsList: builder

	^ builder pluggableTreeSpec new
		model: self;
		roots: #settingsList;
		label: #labelForSetting:;
		autoDeselect: false;
		getSelected: #selectedSetting;
		setSelected: #selectedSetting:;
		frame: (0 @ 0.15 corner: 1 @ 0.85)