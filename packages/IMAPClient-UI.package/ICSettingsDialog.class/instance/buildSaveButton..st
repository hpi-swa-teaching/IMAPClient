toolbuilder
buildSaveButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		frame: (0 @ 0.85 corner: 1 @ 1);
		label: 'Save Setting';
		action: #saveSetting;
		enabled: #enableSaveButton