toolbuilder
buildUpdateButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		frame: (0 @ 0 corner: 0.5 @ 0.05);
		label: 'Update';
		action: #update