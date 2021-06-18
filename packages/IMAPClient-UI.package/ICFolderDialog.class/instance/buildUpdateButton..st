toolbuilder
buildUpdateButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		frame: (0 @ 0 corner: 0.33 @ 0.05);
		label: self class updateIcon;
		action: #update